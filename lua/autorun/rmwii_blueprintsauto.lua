AddCSLuaFile()

-- Track which weapons have had presets applied by player
local PlayerWeaponPresets = {}

-- Table of blueprints and their presets
-- Format: ["weapon_class_name"] = { PrintName = "Optional Display Name", Preset = "EncodedPresetData" }
local Blueprints = {
    -- M4 - Union Guard example
    ["arc9_rmwii_m4_bp_unionguard"] = {
        PrintName = "M4 - Union Guard", -- Optional, just for reference
        Preset = "[Union Guard]XQAAAQDoAAAAAAAAAAA9iIIiM7tuo1AtUDA7pgliTATgD+bdzr30LuTqFaHmcpirBM5FIxFiTbEsU8R0Zmabp2L95iT3GjpK+y1UQgWfOLmf+BC185kaxWpIzuKF9yvh0o5+0S2ghNZTC8Zr1C7sXsryzs9bTGEsBHh1fbT25Xs="
    },
    ["arc9_rmwii_m4_bp_skullbreaker"] = {
        PrintName = "M4 - Skull Breaker",
        Preset = "[M4 - Skull Breaker]XQAAAQDoAAAAAAAAAAA9iIIiM7tuo1AtUDA7pgliTAQq87tvxhGhyF4BAwEU0dBAV3q/MkFoMy/6FbCUKhDOsoo9+1QRNvJJiEqD+5VhTq8hHKQMZZnIwdeIUb+T8gvbdrlxO4dwrOtH7KM0a78ccEWDddNDjb1opeK9ppBCY98Zi9Nx5ftsbUIOWQA="
    },
    ["arc9_rmwii_m4_bp_carminecarbine"] = {
        PrintName = "M4 - Carmine Carbine",
        Preset = "[Carmine Carbine]XQAAAQDsAAAAAAAAAAA9iIIiM7tuo1AtUDA7pgliS/4w0qI1lvQGl7I3iNfd1Du0vp9Bj+9/rkj5zTTzR32cDNi5pdHhZaVZQVVJzE9QCRJSeFa5le40NPRIldLnDhF4qi4rngdTeD7dJF4HrbK4FiDykf9yG5YuLhghY3pDh4LaslBkF2y7KLnA6Cg1YwA=",
    },
    
    -- Add more blueprints here in the same format:
    -- ["class_name"] = { PrintName = "Display Name", Preset = "[Preset Name]Base64EncodedData" },
}

-- Check if this weapon class has already had a preset applied for this player
local function HasAppliedPresetForPlayer(ply, class)
    if not IsValid(ply) or not ply:IsPlayer() then return false end
    
    local steamID = ply:SteamID()
    if not PlayerWeaponPresets[steamID] then
        PlayerWeaponPresets[steamID] = {}
        return false
    end
    
    return PlayerWeaponPresets[steamID][class] == true
end

-- Mark a weapon class as having had its preset applied for this player
local function MarkPresetAppliedForPlayer(ply, class)
    if not IsValid(ply) or not ply:IsPlayer() then return end
    
    local steamID = ply:SteamID()
    if not PlayerWeaponPresets[steamID] then
        PlayerWeaponPresets[steamID] = {}
    end
    
    PlayerWeaponPresets[steamID][class] = true
end

-- Check if a preset file exists on disk
local function PresetFileExists(wep, presetName)
    if not IsValid(wep) then return false end
    if not wep.GetPresetBase then return false end
    
    local presetBase = wep:GetPresetBase()
    local filePath = "arc9_presets/" .. presetBase .. "/" .. presetName .. ".txt"
    
    return file.Exists(filePath, "DATA")
end

-- Verify if the preset was successfully applied by checking installed attachments
local function VerifyPresetApplied(wep)
    if not IsValid(wep) or not wep.Attachments then return false end
    
    -- Check if any attachments are installed
    local hasAttachments = false
    for _, data in pairs(wep.Attachments) do
        if data.Installed then
            hasAttachments = true
            break
        end
    end
    
    return hasAttachments
end

-- Force apply preset data directly to attachments as a last resort
local function ForceApplyPreset(wep, presetData)
    if not IsValid(wep) or not wep.Attachments then return false end
    
    local presetName = string.match(presetData, "%[(.-)%]")
    if not presetName then return false end
    
    local encodedData = string.sub(presetData, string.len(presetName) + 3)
    
    -- Method 1: Try ImportPresetCode and LoadPresetFromTable
    if wep.ImportPresetCode and wep.LoadPresetFromTable then
        local tbl = wep:ImportPresetCode(encodedData)
        if tbl then
            wep:LoadPresetFromTable(tbl)
            
            -- Force a post-modify update
            if wep.PostModify then
                wep:PostModify()
            end
            
            return true
        end
    end
    
    -- Method 2: Direct JSON injection (more reliable but aggressive)
    if wep.ImportPresetCode then
        local tbl = wep:ImportPresetCode(encodedData)
        if tbl then
            -- Direct attachment modification
            for slot, data in pairs(tbl) do
                if wep.Attachments[slot] then
                    wep.Attachments[slot].Installed = data.Installed
                    wep.Attachments[slot].SubAttachments = data.SubAttachments
                    if data.ToggleNum then
                        wep.Attachments[slot].ToggleNum = data.ToggleNum
                    end
                end
            end
            
            -- Force a post-modify update
            if wep.PostModify then
                wep:PostModify()
            end
            
            return true
        end
    end
    
    return false
end

-- Apply blueprint preset with proper timing
local function ApplyBlueprintPreset(wep)
    if not IsValid(wep) or not wep.ARC9 then return false end
    
    -- Get weapon class name
    local class = wep:GetClass()
    
    -- Check if we have a preset for this weapon
    local blueprint = Blueprints[class]
    if not blueprint then return false end
    
    -- Get the owner
    local ply = wep:GetOwner()
    
    -- Check if we've already applied a preset for this player and weapon class in this session
    if HasAppliedPresetForPlayer(ply, class) then
        -- Skip application - player already had this weapon with preset applied
        return false
    end
    
    -- Get the preset data
    local presetData = blueprint.Preset
    
    -- Extract preset name for notification
    local presetName = string.match(presetData, "%[(.-)%]")
    if not presetName then return false end
    
    -- Apply with proper timing - crucial for ARC9 weapon initialization
    if wep._presetAttempts and wep._presetAttempts > 8 then
        -- If we've already tried several times, don't keep trying
        return false
    end
    
    -- Initialize attempts counter if needed
    wep._presetAttempts = (wep._presetAttempts or 0) + 1
    
    -- Use a longer delay for the initial setup
    local delay = (wep._presetAttempts == 1) and 1 or 0.2
    
    timer.Simple(delay, function()
        if not IsValid(wep) then return end
        
        -- Check if the weapon is ready (has Attachments table properly initialized)
        if not wep.Attachments or table.Count(wep.Attachments) == 0 then
            -- Weapon not ready yet, try again later with exponential backoff
            timer.Simple(math.min(wep._presetAttempts * 0.1, 1.0), function()
                if IsValid(wep) then
                    ApplyBlueprintPreset(wep)
                end
            end)
            return
        end
        
        -- Check if the preset file already exists
        local presetExists = PresetFileExists(wep, presetName)
        local success = false
        
        if presetExists then
            -- If the preset already exists, load it
            if wep.LoadPreset then
                wep:LoadPreset(presetName)
                
                -- Verify the preset was applied successfully
                timer.Simple(0.1, function()
                    if not IsValid(wep) then return end
                    
                    if not VerifyPresetApplied(wep) then
                        -- Loading failed, try force applying
                        success = ForceApplyPreset(wep, presetData)
                    else
                        success = true
                    end
                    
                    if success then
                        -- Mark as applied for this player
                        if IsValid(ply) and ply:IsPlayer() then
                            MarkPresetAppliedForPlayer(ply, class)
                        end
                        
                        -- Notify the player (only once per session)
                        if IsValid(ply) and ply:IsPlayer() then
                            ply:ChatPrint(presetName .. " preset loaded automatically!")
                        end
                        
                        -- Mark as loaded
                        wep._presetLoaded = true
                    else
                        -- Try again if we haven't reached max attempts
                        if wep._presetAttempts <= 8 then
                            timer.Simple(0.5, function()
                                if IsValid(wep) then
                                    ApplyBlueprintPreset(wep)
                                end
                            end)
                        end
                    end
                end)
            else
                -- No LoadPreset method, try force applying
                success = ForceApplyPreset(wep, presetData)
                
                if success then
                    -- Mark as applied for this player
                    if IsValid(ply) and ply:IsPlayer() then
                        MarkPresetAppliedForPlayer(ply, class)
                    end
                    
                    -- Notify the player (only once per session)
                    if IsValid(ply) and ply:IsPlayer() then
                        ply:ChatPrint(presetName .. " preset applied automatically!")
                    end
                    
                    -- Mark as loaded
                    wep._presetLoaded = true
                else
                    -- Try again if we haven't reached max attempts
                    if wep._presetAttempts <= 8 then
                        timer.Simple(0.5, function()
                            if IsValid(wep) then
                                ApplyBlueprintPreset(wep)
                            end
                        end)
                    end
                end
            end
        else
            -- Only if the preset doesn't exist, create it
            if wep.LoadPresetFromCode then
                wep:LoadPresetFromCode(presetData)
                
                -- Verify the preset was applied successfully
                timer.Simple(0.1, function()
                    if not IsValid(wep) then return end
                    
                    if not VerifyPresetApplied(wep) then
                        -- Loading failed, try force applying
                        success = ForceApplyPreset(wep, presetData)
                    else
                        success = true
                    end
                    
                    if success then
                        -- Mark as applied for this player
                        if IsValid(ply) and ply:IsPlayer() then
                            MarkPresetAppliedForPlayer(ply, class)
                        end
                        
                        -- Notify the player (only once per session)
                        if IsValid(ply) and ply:IsPlayer() then
                            ply:ChatPrint(presetName .. " preset created and loaded automatically!")
                        end
                        
                        -- Mark as loaded
                        wep._presetLoaded = true
                    else
                        -- Try again if we haven't reached max attempts
                        if wep._presetAttempts <= 8 then
                            timer.Simple(0.5, function()
                                if IsValid(wep) then
                                    ApplyBlueprintPreset(wep)
                                end
                            end)
                        end
                    end
                end)
            else
                -- No LoadPresetFromCode method, try force applying
                success = ForceApplyPreset(wep, presetData)
                
                if success then
                    -- Mark as applied for this player
                    if IsValid(ply) and ply:IsPlayer() then
                        MarkPresetAppliedForPlayer(ply, class)
                    end
                    
                    -- Notify the player (only once per session)
                    if IsValid(ply) and ply:IsPlayer() then
                        ply:ChatPrint(presetName .. " preset applied automatically!")
                    end
                    
                    -- Mark as loaded
                    wep._presetLoaded = true
                else
                    -- Try again if we haven't reached max attempts
                    if wep._presetAttempts <= 8 then
                        timer.Simple(0.5, function()
                            if IsValid(wep) then
                                ApplyBlueprintPreset(wep)
                            end
                        end)
                    end
                end
            end
        end
    end)
    
    return true
end

-- Clear player weapon presets on disconnect
hook.Add("PlayerDisconnected", "ARC9_ModularBlueprints_Disconnect", function(ply)
    if not IsValid(ply) then return end
    
    local steamID = ply:SteamID()
    if PlayerWeaponPresets[steamID] then
        PlayerWeaponPresets[steamID] = nil
    end
end)

-- Hook into player equipment changes with better timing
hook.Add("PlayerLoadout", "ARC9_ModularBlueprints_AutoEquip", function(ply)
    -- Give a slight delay to make sure everything is loaded properly
    timer.Simple(0.2, function()
        if not IsValid(ply) then return end
        
        -- Loop through player's weapons
        for _, wep in pairs(ply:GetWeapons()) do
            if IsValid(wep) and wep.ARC9 and not wep._presetLoaded then
                ApplyBlueprintPreset(wep)
            end
        end
    end)
end)

-- Alternative method using OnEntityCreated to catch when the weapon is spawned
hook.Add("OnEntityCreated", "ARC9_ModularBlueprints_AutoEquip", function(ent)
    timer.Simple(0.2, function()
        if not IsValid(ent) or not ent.ARC9 or ent._presetLoaded then return end
        
        ApplyBlueprintPreset(ent)
    end)
end)

-- Add a hook for weapon equipping
hook.Add("WeaponEquip", "ARC9_ModularBlueprints_WeaponEquip", function(wep, ply)
    if not IsValid(wep) or not wep.ARC9 or wep._presetLoaded then return end
    
    -- Small delay to make sure the weapon is fully initialized
    timer.Simple(0.2, function()
        if IsValid(wep) and not wep._presetLoaded then
            ApplyBlueprintPreset(wep)
        end
    end)
end)

-- Direct hook into ARC9's own initialization
hook.Add("ARC9_OnInit", "ARC9_ModularBlueprints_OnInit", function(wep)
    if not IsValid(wep) or wep._presetLoaded then return end
    
    -- Wait a bit for all attachments to be registered
    timer.Simple(0.2, function()
        if IsValid(wep) and not wep._presetLoaded then
            ApplyBlueprintPreset(wep)
        end
    end)
end)

-- Special hook for initialization ready state
hook.Add("ARC9_LoadAttachments", "ARC9_ModularBlueprints_LoadAttachments", function(wep)
    if not IsValid(wep) or wep._presetLoaded then return end
    
    -- This is the perfect time to apply presets - right after attachments are loaded
    timer.Simple(0.1, function()
        if IsValid(wep) and not wep._presetLoaded then
            ApplyBlueprintPreset(wep)
        end
    end)
end)

-- Manual command to apply blueprint to current weapon
concommand.Add("arc9_apply_blueprint", function(ply)
    if not IsValid(ply) then return end
    
    local wep = ply:GetActiveWeapon()
    if not IsValid(wep) or not wep.ARC9 then
        ply:ChatPrint("Not holding an ARC9 weapon!")
        return
    end
    
    -- Reset attempts counter and presetLoaded flag
    wep._presetAttempts = 0
    wep._presetLoaded = false
    
    -- Also reset the per-player tracking to allow reapplication
    local class = wep:GetClass()
    local steamID = ply:SteamID()
    if PlayerWeaponPresets[steamID] then
        PlayerWeaponPresets[steamID][class] = nil
    end
    
    local result = ApplyBlueprintPreset(wep)
    if result then
        ply:ChatPrint("Attempting to apply blueprint preset...")
    else
        ply:ChatPrint("No blueprint preset found for this weapon.")
    end
end)

-- Console command to refresh presets on all weapons
concommand.Add("arc9_refresh_blueprints", function(ply)
    if IsValid(ply) and not ply:IsAdmin() then
        ply:ChatPrint("You need to be an admin to use this command!")
        return
    end
    
    -- Clear the session tracking
    PlayerWeaponPresets = {}
    
    -- Reset the _presetLoaded flag on all weapons
    for _, wep in pairs(ents.FindByClass("arc9_*")) do
        if IsValid(wep) and wep.ARC9 then
            wep._presetLoaded = nil
            wep._presetAttempts = 0
        end
    end
    
    -- Reapply presets
    for _, pl in pairs(player.GetAll()) do
        for _, wep in pairs(pl:GetWeapons()) do
            if IsValid(wep) and wep.ARC9 then
                ApplyBlueprintPreset(wep)
            end
        end
    end
    
    -- Notify
    if IsValid(ply) then
        ply:ChatPrint("Blueprint presets are being refreshed!")
    else
        print("Blueprint presets are being refreshed!")
    end
end)

-- Command to get detailed info about currently held weapon
concommand.Add("arc9_weapon_info", function(ply)
    if not IsValid(ply) then return end
    
    local wep = ply:GetActiveWeapon()
    if not IsValid(wep) then
        ply:ChatPrint("No weapon currently equipped!")
        return
    end
    
    local output = "Weapon Info:\n"
    output = output .. "Class: " .. wep:GetClass() .. "\n"
    output = output .. "Print Name: " .. (wep.PrintName or "Unknown") .. "\n"
    output = output .. "Is ARC9: " .. tostring(wep.ARC9 or false) .. "\n"
    
    if wep.ARC9 then
        -- Check for existing presets
        if wep.GetPresetBase and wep.GetPresets then
            local presetBase = wep:GetPresetBase()
            local presets = wep:GetPresets()
            
            output = output .. "\nPreset Base: " .. presetBase .. "\n"
            output = output .. "Existing Presets: " .. table.Count(presets) .. "\n"
            
            for i, presetName in ipairs(presets) do
                -- Check if this is a preset we would apply
                local blueprint = Blueprints[wep:GetClass()]
                local isOurPreset = false
                
                if blueprint then
                    local bpPresetName = string.match(blueprint.Preset, "%[(.-)%]")
                    isOurPreset = (bpPresetName == presetName)
                end
                
                output = output .. "- " .. presetName .. (isOurPreset and " (Our Blueprint)" or "") .. "\n"
                
                if i >= 10 then
                    output = output .. "- (and " .. (table.Count(presets) - 10) .. " more...)\n"
                    break
                end
            end
        end
        
        -- Check attachments table
        output = output .. "\nAttachments table: " .. (wep.Attachments and "Present (" .. table.Count(wep.Attachments) .. " slots)" or "Missing") .. "\n"
        
        -- List installed attachments
        if wep.Attachments then
            local installedCount = 0
            output = output .. "\nInstalled Attachments:\n"
            
            for slot, data in pairs(wep.Attachments) do
                if data.Installed then
                    installedCount = installedCount + 1
                    output = output .. "- Slot " .. slot .. ": " .. data.Installed .. "\n"
                end
            end
            
            if installedCount == 0 then
                output = output .. "- None installed\n"
            end
        end
        
        -- List preset methods
        output = output .. "\nPreset Methods:\n"
        local methods = {
            "LoadPreset", "LoadPresetFromCode", "ImportPresetCode", "LoadPresetFromTable", 
            "PostModify", "PruneAttachments", "BuildSubAttachments", "GetPresetBase", "GetPresets"
        }
        
        for _, method in ipairs(methods) do
            output = output .. "- " .. method .. ": " .. tostring(isfunction(wep[method])) .. "\n"
        end
        
        -- Check if preset has been applied for this player
        local class = wep:GetClass()
        local steamID = ply:SteamID()
        local presetApplied = PlayerWeaponPresets[steamID] and PlayerWeaponPresets[steamID][class] or false
        output = output .. "\nPreset already applied this session: " .. tostring(presetApplied) .. "\n"
        
        -- Check if preset was successfully applied to the weapon
        output = output .. "Has attachments installed: " .. tostring(VerifyPresetApplied(wep)) .. "\n"
        
        -- Check for Blueprint preset file existence
        local blueprint = Blueprints[class]
        if blueprint then
            local presetName = string.match(blueprint.Preset, "%[(.-)%]") or "Unknown"
            local filePath = "arc9_presets/" .. wep:GetPresetBase() .. "/" .. presetName .. ".txt"
            local fileExists = file.Exists(filePath, "DATA")
            
            output = output .. "Blueprint preset file exists: " .. tostring(fileExists) .. " (" .. filePath .. ")\n"
        end
    end
    
    ply:PrintMessage(HUD_PRINTCONSOLE, output)
    ply:ChatPrint("Weapon info printed to console")
end)

-- Reset player's preset tracking
concommand.Add("arc9_reset_session", function(ply)
    if not IsValid(ply) then return end
    
    local steamID = ply:SteamID()
    PlayerWeaponPresets[steamID] = nil
    
    ply:ChatPrint("Your blueprint session has been reset. Presets will be applied again.")
end)

-- Force apply preset to current weapon (admin only)
concommand.Add("arc9_force_preset", function(ply)
    if IsValid(ply) and not ply:IsAdmin() then
        ply:ChatPrint("You need to be an admin to use this command!")
        return
    end
    
    local wep = IsValid(ply) and ply:GetActiveWeapon() or nil
    if not IsValid(wep) or not wep.ARC9 then
        if IsValid(ply) then
            ply:ChatPrint("Not holding an ARC9 weapon!")
        end
        return
    end
    
    local class = wep:GetClass()
    local blueprint = Blueprints[class]
    
    if not blueprint then
        if IsValid(ply) then
            ply:ChatPrint("No blueprint preset found for this weapon.")
        end
        return
    end
    
    local presetData = blueprint.Preset
    local presetName = string.match(presetData, "%[(.-)%]")
    
    local success = ForceApplyPreset(wep, presetData)
    
    if success then
        -- Mark as loaded
        wep._presetLoaded = true
        
        -- Mark as applied for this player
        if IsValid(ply) and ply:IsPlayer() then
            MarkPresetAppliedForPlayer(ply, class)
            ply:ChatPrint("Successfully force-applied " .. presetName .. " preset!")
        end
    else
        if IsValid(ply) then
            ply:ChatPrint("Failed to force-apply preset.")
        end
    end
end)
AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "GPR-91"
SWEP.Trivia_Class = "Assault Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "Full-auto assault rifle. Excellent handling and mobility. Moderate range but on the lower end of assault rifle firepower." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "United Kingdom" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56 NATO" -- "9x21mm Jager"



SWEP.ViewModel = "models/weapons/bo6/arccw_r_bo6_gpr91.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_aug.mdl"
SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses


SWEP.WorldModelOffset = {
    pos = Vector(-9.5, 3, -7),
    ang = Angle(180, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}


SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.DefaultBodygroups = "0000000000000000000000000"



SWEP.NoHideLeftHandInCustomization = true

SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1
    },
    {
        Mode = 0
    },
}


-------------------- POS

SWEP.CustomizePos = Vector(9.824, 0, -4.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.HolsterPos = Vector(0.5, 3, 1.2)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.IronSightStruct = {
    Pos = Vector(-2.893, -2, -0.24),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING


SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.80
SWEP.ShootSpeedMult = 1

SWEP.SightTime = 0.39

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 35
SWEP.DamageMin = 30 -- damage done at maximum range
SWEP.Range = 250 -- in METRES





SWEP.Recoil = 0.5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = 0.25



SWEP.Delay = 60 / 750 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ArcCW.ShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/bo6/gpr91/fire_fp_v2.wav"
SWEP.ShootSoundSilenced = "weapons/bo6/gpr91/fire_sup.wav"


------------------- MAG


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.




----------------ANIMATION
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement



SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [0] = "bulletchamber",
     [1] = "bullet1"
}






SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local magAnimations = {
        ["att_gpr91_xmag"] = "_45",
    }
    
    local hasSOH = false
    local magSuffix = ""
    
    if wep.Attachments then
        -- First check for magazine attachments
        for _, att in pairs(wep.Attachments) do
            if att.Installed and magAnimations[att.Installed] then
                magSuffix = magAnimations[att.Installed]
                break
            end
        end
        
        -- Then check for SOH perk
        for _, att in pairs(wep.Attachments) do
            if att.Installed and att.Installed == "att_perk_soh" then
                hasSOH = true
                break
            end
        end
        
        -- Combine both modifications if necessary
        if hasSOH then
            return anim .. magSuffix .. "_soh"
        elseif magSuffix ~= "" then
            return anim .. magSuffix
        end
    end
    
    return anim
end

SWEP.AttachmentElements = {
        ["xmag"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.HoldtypeCustomize = "slam"


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "ready",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_soh"] = {
        Source = "reload_30_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_45_soh"] = {
        Source = "reload_45_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_45_soh"] = {
        Source = "reload_empty_soh_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_soh"] = {
        Source = "reload_empty_30_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty"] = {
        Source = "reload_empty_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.05, -- if no value is specified then ease = lhikin
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.90, -- (not actually inverse kinematics)
    },
     ["reload_45"] = {
        Source = "reload_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_45"] = {
        Source = "reload_empty_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.05, -- if no value is specified then ease = lhikin
        LHIKIn = 0.15, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.90, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_bo6_gpr91.Clipout",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/gpr91/reload_magout.wav"
} )

sound.Add( {
	name = "r_bo6_gpr91.Cliphit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/gpr91/reload_maghit.wav"
} )

sound.Add( {
	name = "r_bo6_gpr91.Clipin",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/gpr91/reload_magin.wav"
} )

sound.Add( {
	name = "r_bo6_gpr91.BoltBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/gpr91/reload_chargeback.wav"
} )

sound.Add( {
	name = "r_bo6_gpr91.BoltFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/gpr91/reload_chargefwd.wav"
} )




------------------ATTS

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local atts = wep.Attachments
    
    if !IsValid(vm) then return end
    
    -- Call the base ModifyBodygroups function to apply AttachmentElements first
    if wep.BaseClass and wep.BaseClass.Hook_ModifyBodygroups then
        wep.BaseClass.Hook_ModifyBodygroups(wep, data)
    end
    
    -- Check if attachment in slot #1 (optic) is installed
    if atts[1] and atts[1].Installed then
        vm:SetBodygroup(1, 1)
        vm:SetBodygroup(2, 1)
    end
end



SWEP.AttachmentElements = {
            ["nomuz"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

SWEP.RejectAttachments = {
    ["uc_tp_fastreload"] = true,
}


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Carry Handle",
        Slot = "optic",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(0, -3.05, -2), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Default Flash Hider",
        Slot = "muzzle_ar",
        InstalledEles = {"nomuz"}, -- activate these AttachmentElements if something is installed
        Bone = "weapon",
        Offset = {
        vpos = Vector(0, -1.83, 15.9), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_foregrip",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, 0, 5),
         vmax = Vector(0, 0, 8),
     },
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = "tac",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(-1.5, -1.20,6), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),
         }
    },
    {
        PrintName = "Magazine",
        DefaultAttName = "30 Round Magazine",
        Slot = "wz_gpr91_mags",
    },
       {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = {"uc_tp","wz_perks"}
    },

}
AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "EXPEDITE-12"
SWEP.Trivia_Class = "Semi-Auto Shotgun" -- "Submachine Gun"
SWEP.Trivia_Desc = "A practiced hand can control the Expedite 12's recoil to devastating effects." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "U.S.A" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "12 Gauge" -- "9x21mm Jager"



SWEP.ViewModel = "models/weapons/mwii/arccw_r_mwii_expedite12.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.MirrorWorldModel = "models/weapons/mwii/wm/arccw_r_mwii_expedite12_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM



SWEP.WorldModelOffset = {
    pos = Vector(-3, 3, -6),
    ang = Angle(180, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}



SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.DefaultBodygroups = "0000000000000000000000000"

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.NoHideLeftHandInCustomization = true

SWEP.Firemodes = {
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
    Pos = Vector(-2.19, 0, 0.879),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING

SWEP.Num = 12


SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.70
SWEP.ShootSpeedMult = 1

SWEP.SightTime = 0.21

SWEP.AccuracyMOA = 30 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 8
SWEP.DamageMin = 1 -- damage done at maximum range
SWEP.Range = 15 -- in METRES





SWEP.Recoil = 1.5
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.9
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.5
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = 0.42



SWEP.Delay = 60 / 150 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/mwii/expedite12/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/mwii/lachmannsub/fire_sup.wav"


------------------- MAG


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.




----------------ANIMATION


SWEP.MuzzleEffect = "muzzleflash_shotgun"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

SWEP.ViewModelFOV = 70

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [0] = "bulletchamber",
     [1] = "bullet1"
}





SWEP.Hook_SelectReloadAnimation = function(wep, anim)

    local magAnimations = {}
    
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
--]]


SWEP.AttachmentElements = {

}



SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.HoldtypeCustomize = "slam"


SWEP.ShotgunReload = true

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["ready"] = {
        Source = "ready",
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.1, -- if no value is specified then ease = lhikin
        LHIKIn = 0, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.1, -- (not actually inverse kinematics)
    },
    ["holster_empty"] = {
        Source = "holster_empty",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0,
    },
    ["sgreload_start"] = {
        Source = "reload_start",
    },
    ["sgreload_start_empty"] = {
        Source = "reload_start_empty",
    },
    ["sgreload_insert"] = {
        Source = "reload_loop",
    },
    ["sgreload_finish"] = {
        Source = "reload_end",
    },
}



sound.Add( {
	name = "r_mwii_EXPD12.BoltEquipBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/expedite12/first_chargeback.wav"
} )


sound.Add( {
	name = "r_mwii_EXPD12.BoltEquipFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/expedite12/first_chargefwd.wav"
} )


sound.Add( {
	name = "r_mwii_EXPD12.Shellin",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = {
        "weapons/mwii/expedite12/shellin_1.wav",
        "weapons/mwii/expedite12/shellin_2.wav",
        "weapons/mwii/expedite12/shellin_3.wav",
        "weapons/mwii/expedite12/shellin_4.wav",
        "weapons/mwii/expedite12/shellin_5.wav",
    }
} )


sound.Add( {
	name = "r_mwii_EXPD12.ShellinEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/expedite12/shellin_chamber.wav"
} )

sound.Add( {
	name = "r_mwii_EXPD12.BoltCatch",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/expedite12/boltcatch.wav"
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
    end
end





SWEP.RejectAttachments = {
    ["uc_tp_fastreload"] = true,
}


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Ironsights",
        Slot = "optic",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -1.5, 0),
         vmax = Vector(0, -1.5, 1),
     },
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_foregrip",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, 1.5, 7.5),
         vmax = Vector(0, 1.5, 10),
     },
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
            {
        PrintName = "Tactical",
        DefaultAttName = "None",
        RequireFlags = {"tac_yes"}, -- same as attachments
        Slot = "tac",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(-1, -1.88,7), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 170),
         }
    },
       {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = {"uc_tp"}
    },

}
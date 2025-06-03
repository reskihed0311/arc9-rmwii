AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "XRK Stalker"
SWEP.Trivia_Class = "Assault Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "Stalk your prey and lay them out with this tactical sniper rifle chambered in .50 Cal." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "XRK" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".50 BMG" -- "9x21mm Jager"
SWEP.Primary.Ammo = "SniperPenetratedRounds" -- what ammo type the gun uses


SWEP.ViewModel = "models/weapons/mwiii/arccw_r_mwiii_xrkstalker.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"



SWEP.WorldModelOffset = {
    pos = Vector(-5.5, 3, -6.5),
    ang = Angle(180, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}



SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.DefaultBodygroups = "0000000000000000000000000"



SWEP.NoHideLeftHandInCustomization = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "BOLT",
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
    Pos = Vector(-2.507, 0, -0.32),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING

SWEP.SpeedMult = 0.72
SWEP.SightedSpeedMult = 0.45
SWEP.ShootSpeedMult = 1


SWEP.SightTime = 0.38

SWEP.AccuracyMOA = 0.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 750 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 900 -- dispersion penalty when in the air


SWEP.Damage = 115
SWEP.DamageMin = 100 -- damage done at maximum range
SWEP.Range = 350 -- in METRES





SWEP.Recoil = 5
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 5
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 5 -- random viewmodel offset when shooty



SWEP.Sway = 0.25



SWEP.Delay = 60 / 150-- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellScale = 1.3
SWEP.ShellPitch = 70
SWEP.ShellSounds = ArcCW.MediumShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/mwiii/xrkstalker/fire_fp_v2.wav"
SWEP.ShootSoundSilenced = "weapons/mwiii/xrkstalker/fire_sil.wav"


------------------- MAG


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.




----------------ANIMATION
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

SWEP.ViewModelFOV = 70

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [2] = "bullet_1",
     [3] = "bullet_2"
}





SWEP.NoLastCycle = true -- do not cycle on last shot
SWEP.ManualAction = true -- pump/bolt action


SWEP.AttachmentElements = {
}



SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.HoldtypeCustomize = "slam"

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
    ["ready"] = {
        Source = "ready",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "fire_iron",
    },
    ["fire_iron_empty"] = {
        Source = "fire",
    },
    ["cycle"] = {
        Source = "cycle",
        ShellEjectAt = 0.5,
    },
    ["cycle_iron"] = {
        Source = "cycle_iron",
        ShellEjectAt = 0.5,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
         LastClip1OutTime = 1.2,
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        ShellEjectAt = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LastClip1OutTime = 2, -- when should the belt visually replenish on a belt fed
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
 ["reload_soh"] = {
        Source = "reload_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
         LastClip1OutTime = 1.2,
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
 ["reload_empty_soh"] = {
        Source = "reload_soh_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
         LastClip1OutTime = 1.2,
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_mwiii_XRKStalker.BoltBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/xrkstalker/boltback.wav"
} )

sound.Add( {
	name = "r_mwiii_XRKStalker.BoltFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/xrkstalker/boltfwd.wav"
} )

sound.Add( {
	name = "r_mwiii_XRKStalker.MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/xrkstalker/reload_magout.wav"
} )

sound.Add( {
	name = "r_mwiii_XRKStalker.MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/xrkstalker/reload_maghit.wav"
} )


sound.Add( {
	name = "r_mwiii_XRKStalker.MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/xrkstalker/reload_magin.wav"
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


SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    local magAnimations = {
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


SWEP.RejectAttachments = {
    ["uc_tp_fastreload"] = true,
}


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Ironsights",
        Slot = {"optic", "optic_sniper"},
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         },
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -3.2, -2),
         vmax = Vector(0, -3.2, 6),
     }, 
    },
        {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = "tac",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(-1.1, -1.91,15), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),
         }
    },
    {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_snip_bipod",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
    {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = "wz_perks",
    },
    {
        PrintName = "Training Package",
        DefaultAttName = "None",
        Slot = "uc_tp",
    }
}
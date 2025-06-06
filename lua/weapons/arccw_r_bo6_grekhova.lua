AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 1

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "Grekhova"
SWEP.Trivia_Class = "Assault Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "Full-auto pistol. Good damage. Slower handling and high recoil deviation." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Soviet Union" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9MM Makarov" -- "9x21mm Jager"



SWEP.ViewModel = "models/weapons/bo6/arccw_r_bo6_grekhova.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorWorldModel = "models/weapons/bo6/wm/arccw_r_bo6_grekhova_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM



SWEP.WorldModelOffset = {
    pos = Vector(-8, 3, -4.5),
    ang = Angle(180, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}


SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.DefaultBodygroups = "0000000000000000000000000"

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

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
    Pos = Vector(-2.017, 0, 0.6),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING


SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.85
SWEP.ShootSpeedMult = 1

SWEP.SightTime = 0.1

SWEP.AccuracyMOA = 25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 37
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 75 -- in METRES





SWEP.Recoil = 0.45
SWEP.RecoilSide = 1
SWEP.RecoilRise = 0.9
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.5
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = 0.25



SWEP.Delay = 60 / 750 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 0.9
SWEP.ShellSounds = ArcCW.TinyShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/bo6/grekhova/fire_fp.wav"
SWEP.ShootSoundSilenced = "weapons/bo6/grekhova/fire_sup.wav"


------------------- MAG


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.




----------------ANIMATION
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

SWEP.ViewModelFOV = 70

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [0] = "bulletchamber",
     [1] = "bullet1"
}






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


SWEP.AttachmentElements = {
}



SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.HoldtypeCustomize = "slam"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
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
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_soh"] = {
        Source = "reload_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_soh"] = {
        Source = "reload_soh_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_mwii_grekhova.20MagRel",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/reload_magrel.wav"
} )


sound.Add( {
	name = "r_mwii_grekhova.20MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/reload_magout.wav"
} )

sound.Add( {
	name = "r_mwii_grekhova.20MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/reload_maghit.wav"
} )

sound.Add( {
	name = "r_mwii_grekhova.20MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/reload_magin.wav"
} )

sound.Add( {
	name = "r_mwii_grekhova.BoltRel",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/reload_charge.wav"
} )




sound.Add( {
	name = "r_mwii_grekhova.SlideBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/bo6/grekhova/slideback.wav"
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
        Bone = "slide", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -0.2, 0),
         vmax = Vector(0, -0.2, 1.5),
     },
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
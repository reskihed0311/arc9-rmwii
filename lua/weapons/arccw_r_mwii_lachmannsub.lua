AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "Lachmann Sub"
SWEP.Trivia_Class = "Submachine Gun" -- "Submachine Gun"
SWEP.Trivia_Desc = "The Lachmann Sub's compact, fully automatic 9mm receiver is a masterpiece of stability, mobility and lethality." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "Germany" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9MM Parabellum" -- "9x21mm Jager"



SWEP.ViewModel = "models/weapons/mwii/arccw_r_mwii_lachmannsub.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.MirrorWorldModel = "models/weapons/mwii/wm/arccw_r_mwii_lachmannsub_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM



SWEP.WorldModelOffset = {
    pos = Vector(-4.2, 3, -6.5),
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
    Pos = Vector(-2.363, 0, 0.519),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.70
SWEP.ShootSpeedMult = 1

SWEP.SightTime = 0.21

SWEP.AccuracyMOA = 14 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 50 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 22
SWEP.DamageMin = 8 -- damage done at maximum range
SWEP.Range = 150 -- in METRES





SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.9
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.5
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = .75



SWEP.Delay = 60 / 800 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/mwii/lachmannsub/fire_fp_v2.wav"
SWEP.ShootSoundSilenced = "weapons/mwii/lachmannsub/fire_sup.wav"


------------------- MAG


SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.




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
        ["att_lachmannsub_xmag"] = "_45",
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
--]]


SWEP.AttachmentElements = {
     ["shroud"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 2, bg = 1},
            {ind = 3, bg = 1},
    },
        AttPosMods = {
    [4] = {
        vpos = Vector(-1.3, -1.7,8), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),
        },
    }
    },
     ["nomuz"] = {
        VMBodygroups = {
            {ind = 6, bg = 1},
    },
    },
     ["xmag"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
    },
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
    ["reload"] = {
        Source = "reload_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty"] = {
        Source = "reload_empty_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
  ["reload_45"] = {
        Source = "reload_xmag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_45"] = {
        Source = "reload_empty_xmag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_soh"] = {
        Source = "reload_soh_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_soh"] = {
        Source = "reload_soh_empty_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_45_soh"] = {
        Source = "reload_soh_xmag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_45_soh"] = {
        Source = "reload_empty_soh_xmag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_mwii_lmsub.BoltBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/boltback.wav"
} )



sound.Add( {
	name = "r_mwii_lmsub.30MagGrab",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_maggrab.wav"
} )


sound.Add( {
	name = "r_mwii_lmsub.30MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_magout.wav"
} )



sound.Add( {
	name = "r_mwii_lmsub.30MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_maghit.wav"
} )


sound.Add( {
	name = "r_mwii_lmsub.30MagClick",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_magclick.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.BoltRel",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/boltrel.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_empty_magout.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_empty_maghit.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_empty_magin.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.BoltFwdFirst",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/equip_boltrelease.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagOutFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_magout2.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagHitFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_maghit.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.30MagInFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_magin.wav"
} )


sound.Add( {
	name = "r_mwii_lmsub.ChargeBackFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_chargeback.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.ChargeFwdFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_chargefwd.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmagout.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmaghit.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmagin.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmagout_empty.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmaghit_empty.wav"
} )


sound.Add( {
	name = "r_mwii_lmsub.45MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_xmagin_empty.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagOutFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_xmagout.wav"
} )

sound.Add( {
	name = "r_mwii_lmsub.45MagHitFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_xmaghit.wav"
} )


sound.Add( {
	name = "r_mwii_lmsub.45MagInFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/lachmannsub/reload_fast_xmagin.wav"
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
         vmin = Vector(0, -3.35, -0.50),
         vmax = Vector(0, -3.35, 1),
     },
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
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
        vpos = Vector(0, -1.75, 11), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_foregrip",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -0.9, 7),
         vmax = Vector(0, -0.9, 8),
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
        vpos = Vector(-1, -1.88,7), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 170),
         }
    },
    {
        PrintName = "Conversion Kit",
        DefaultAttName = "None",
        Slot = "wz_lachmannsub_amp",
    },
    {
        PrintName = "Magazine",
        DefaultAttName = "30 Round Magazine",
        Slot = "wz_lachmannsub_mags",
    },
       {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = {"uc_tp","wz_perks"}
    },

}
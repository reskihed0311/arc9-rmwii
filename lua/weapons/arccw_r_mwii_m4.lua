AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "M4"
SWEP.Trivia_Class = "Assault Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "The flagship rifle of the M4 Platform. This reliable workhorse is a jack-of-all-trades that performs well in most combat scenarios." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "U.S.A" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56 NATO" -- "9x21mm Jager"



SWEP.ViewModel = "models/weapons/mwii/arccw_r_mwii_m4.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.MirrorWorldModel = "models/weapons/mwii/wm/arccw_r_mwii_m4_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM



SWEP.WorldModelOffset = {
    pos = Vector(-4.2, 3, -6.5),
    ang = Angle(180, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}


SWEP.MirrorVMWM = true -- Copy the viewmodel, along with all its attachments, to the worldmodel. Super convenient!


SWEP.DefaultBodygroups = "0000000000000000000000000"

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

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
    Pos = Vector(-2.227, -2.5, 0.079),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING


SWEP.SpeedMult = 0.80
SWEP.SightedSpeedMult = 0.68
SWEP.ShootSpeedMult = 1

SWEP.SightTime = 0.21

SWEP.AccuracyMOA = 4 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 900 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 29
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 250 -- in METRES





SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.75
SWEP.RecoilRise = 0.9
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.5
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = 0.25



SWEP.Delay = 60 / 900 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ArcCW.ShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/mwii/m4/m4_fire_fp_v2.wav"
SWEP.ShootSoundSilenced = "weapons/mwii/m4/m4_fire_sup.wav"


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
        ["att_m4_xmag"] = "_45",
        ["att_m4_xmaglrg"] = "_60",
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
        ["custompgrip"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },
        ["nomuz"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
       ["customstock"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
        ["xmag"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
           ["xmaglrg"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["carbineshroud"] = {
        VMBodygroups = {
            {ind = 2, bg = 4},
            {ind = 3, bg = 1},
            {ind = 5, bg = 4},
            
    },
     AttPosMods = {
    [3] = {
         vpos = Vector(0, -1.3, 18), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90), 
        },
        [4] = {
            SlideAmount = { -- only if base att has slideable
                     vmin = Vector(0, 0.1, 8),
                     vmax = Vector(0, 0.1, 10),
            },
        },
     [5] = {
         vpos = Vector(-1, -1.20,13), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),  
        },
     }
    },
    ["hightower"] = {
        VMBodygroups = {
            {ind = 2, bg = 7},
            {ind = 3, bg = 1},
            {ind = 5, bg = 7},
            
    },
     AttPosMods = {
 [3] = {
         vpos = Vector(0, -1.3, 23.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90), 
        },
        [4] = {
            SlideAmount = { -- only if base att has slideable
                     vmin = Vector(0, -0.44, 9),
                     vmax = Vector(0, -0.44, 13),
            },
        },
     }
    },
     ["exf"] = {
        VMBodygroups = {
            {ind = 2, bg = 5},
            {ind = 3, bg = 1},
            {ind = 5, bg = 5},
            
    },
     AttPosMods = {
    [3] = {
         vpos = Vector(0, -1.3, 20), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90), 
        },
        [4] = {
            SlideAmount = { -- only if base att has slideable
                     vmin = Vector(0, -0.35, 9),
                     vmax = Vector(0, -0.35, 13),
            },
        },
            [5] = {
         vpos = Vector(-1, -1.20,18.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),  
        },
     }
    },
     ["firebrand"] = {
        VMBodygroups = {
            {ind = 2, bg = 6},
            {ind = 3, bg = 1},
            {ind = 5, bg = 6},
            
    },
     AttPosMods = {
     [3] = {
         vpos = Vector(0, -1.3,11), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90), 
        },
        [4] = {
            SlideAmount = { -- only if base att has slideable
                     vmin = Vector(0, -0.35, 8),
                     vmax = Vector(0, -0.35, 9),
            },
        },
       [5] = {
         vpos = Vector(-1, -1.20,9.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),  
        },
     }
    },
     ["h4"] = {
        VMBodygroups = {
            {ind = 2, bg = 2},
            {ind = 3, bg = 1},
            {ind = 5, bg = 2},
            
    },
     AttPosMods = {
      [3] = {
         vpos = Vector(0, -1.3,14.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90), 
        },
        [4] = {
            SlideAmount = { -- only if base att has slideable
                     vmin = Vector(0, -0.58, 9),
                     vmax = Vector(0, -0.58, 10),
            },
        },
       [5] = {
         vpos = Vector(-1.1, -1.3,13), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),  
        },
     }
    },
}

SWEP.RejectAttachments = {
    ["att_sto_m4_assault60"] = true,
    ["uc_tp_fastreload"] = true,
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
    ["ready"] = {
        Source = "ready",
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.1, -- if no value is specified then ease = lhikin
        LHIKIn = 0, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.28, -- (not actually inverse kinematics)
        
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
        Source = "reload_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_soh"] = {
        Source = "reload_30_soh",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
     ["reload_empty_soh"] = {
        Source = "reload_empty_soh_30",
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
        Source = "reload_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
      ["reload_45_soh"] = {
        Source = "reload_soh_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
      ["reload_empty_45_soh"] = {
        Source = "reload_empty_soh_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_45"] = {
        Source = "reload_empty_45",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
         ["reload_60"] = {
        Source = "reload_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
             ["reload_60_soh"] = {
        Source = "reload_soh_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.15, -- if no value is specified then ease = lhikin
        LHIKIn = 0.55, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.15, -- if no value is specified then ease = lhikin
        LHIKIn = 0.55, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
        ["reload_empty_60_soh"] = {
        Source = "reload_empty_soh_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.15, -- if no value is specified then ease = lhikin
        LHIKIn = 0.55, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_mwii_m4.30MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_magout.wav"
} )


sound.Add( {
	name = "r_mwii_m4.45MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmagout.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrgout.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrgin.wav"
} )


sound.Add( {
	name = "r_mwii_m4.60MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrgout_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrghit_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaglrgin_empty.wav"
} )


sound.Add( {
	name = "r_mwii_m4.45MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmagin.wav"
} )


sound.Add( {
	name = "r_mwii_m4.30MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_magout_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmagout_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmaghit_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_xmagin_empty.wav"
} )


sound.Add( {
	name = "r_mwii_m4.30MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_maghit_empty.wav"
} )

sound.Add( {
	name = "r_mwii_m4.30MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_magin_empty.wav"
} )


sound.Add( {
	name = "r_mwii_m4.BoltRel",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_empty_bolt.wav"
} )


sound.Add( {
	name = "r_mwii_m4.30MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_maghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.30MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_magin.wav"
} )

sound.Add( {
	name = "r_mwii_m4.BoltBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_raise_first_boltback.wav"
} )




sound.Add( {
	name = "r_mwii_m4.BoltFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_raise_first_boltfwd.wav"
} )

sound.Add( {
	name = "r_mwii_m4.30FastMagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_magout.wav"
} )


sound.Add( {
	name = "r_mwii_m4.30FastMagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_maghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.30FastMagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_magin.wav"
} )

sound.Add( {
	name = "r_mwii_m4.30BoltFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_bolt.wav"
} )


sound.Add( {
	name = "r_mwii_m4.45FastMagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmagout.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45FastMagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmaghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.45FastMagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmagin.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60FastMagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmaglrgout.wav"
} )


sound.Add( {
	name = "r_mwii_m4.60FastMagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmaglrghit.wav"
} )

sound.Add( {
	name = "r_mwii_m4.60FastMagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwii/m4/m4_fast_xmaglrgin.wav"
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







SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Ironsights",
        Slot = "optic",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -2.4, 0),
         vmax = Vector(0, -2.4, 3),
     },
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Handguard",
        DefaultAttName = "Default Handguard",
        Slot = "wz_m4_hg",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(2.20, -4.0, -10.1), -- offset that the attachment will be relative to the bone
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
        vpos = Vector(0, -1.3, 16.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
        {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_foregrip",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -0.25, 9),
         vmax = Vector(0, -0.25, 11),
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
        vpos = Vector(-1, -1.20,15), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),
         }
    },
    {
        PrintName = "Magazine",
        DefaultAttName = "30 Round Magazine",
        Slot = "wz_m4_mags",
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Default M4 Stock",
        Slot = "wz_m4_stock",
        Bone = "weapon",
        Offset = {
        vpos = Vector(2.20, -4.0, -10.1), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
    {
        PrintName = "Pistol Grip",
        DefaultAttName = "Default Pistol Grip",
        Slot = "wz_m4_pgrip",
        Bone = "weapon",
        Offset = {
        vpos = Vector(2.20, -4.0, -10.1), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
       {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = {"uc_tp","wz_perks"}
    },

}
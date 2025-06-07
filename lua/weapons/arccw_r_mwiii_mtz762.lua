AddCSLuaFile()

SWEP.Base = "arccw_base"

SWEP.Slot = 2

SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARCCW - Warzone"
SWEP.NeverPhysBullet = true
SWEP.PrintName = "MTZ-762"
SWEP.Trivia_Class = "Assault Rifle" -- "Submachine Gun"
SWEP.Trivia_Desc = "A fully automatic Battle Rifle designed to send hard-hitting 7.62 rounds downrange at high velocity." -- "Ubiquitous 9mm SMG. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time."
SWEP.Trivia_Manufacturer = "U.S.A" -- "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "5.56 NATO" -- "9x21mm Jager"
SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses


SWEP.ViewModel = "models/weapons/mwiii/arccw_r_mwii_mtz762.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.MirrorWorldModel = "models/weapons/mwiii/wm/arccw_r_mwii_mtz762_wm.mdl" -- Use this to set the mirrored viewmodel to a different model, without any floating speedloaders or cartridges you may have. Needs MirrorVMWM



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
    Pos = Vector(-2.441, 0, -0.16),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1,
}


-------------------- BALANCING

SWEP.SpeedMult = 0.78
SWEP.SightedSpeedMult = 0.62
SWEP.ShootSpeedMult = 1


SWEP.SightTime = 0.42

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 1 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air


SWEP.Damage = 42
SWEP.DamageMin = 29 -- damage done at maximum range
SWEP.Range = 350 -- in METRES





SWEP.Recoil = 0.8
SWEP.RecoilSide = 1
SWEP.RecoilRise = 1
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty



SWEP.Sway = 0.25



SWEP.Delay = 60 / 550 -- 60 / RPM.

-----------------FX

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1
SWEP.ShellSounds = ArcCW.ShellSoundsTable--ArcCW.ShellSoundsTable

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)


SWEP.ShootSound = "weapons/mwiii/mtz762/fire_fp_v2.wav"
SWEP.ShootSoundSilenced = "weapons/mwiii/mtz762/fire_sup.wav"


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
        ["att_mtz762_xmag"] = "_40",
        ["att_m4_xmaglrg"] = "_60",
        ["att_mtz762_amp_762ru"] = "_30ru",
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
        VMBodygroups = {{ind = 5, bg = 2}},
    },
       ["nomuz"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
        ["xmagru"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
        ["amp_heretic"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
    },
        ["ammo_762ru"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
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
    ["ready"] = {
        Source = "ready",
                LHIK = true,
        LHIKEaseIn = 0.1, -- how long LHIK eases in.
        LHIKEaseOut = 0.1, -- if no value is specified then ease = lhikin
        LHIKIn = 0, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.1, -- (not actually inverse kinematics)
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
        Source = "reload_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_soh"] = {
        Source = "reload_soh_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_soh"] = {
        Source = "reload_empty_soh_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty"] = {
        Source = "reload_empty_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
      ["reload_40"] = {
        Source = "reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_40_soh"] = {
        Source = "reload_soh_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_40_soh"] = {
        Source = "reload_empty_soh_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
        ["reload_30ru"] = {
        Source = "reload_amp_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
        ["reload_30ru_soh"] = {
        Source = "reload_amp_soh_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
        ["reload_empty_30ru_soh"] = {
        Source = "reload_empty_amp_soh_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
        ["reload_empty_30ru"] = {
        Source = "reload_empty_amp_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
        LHIK = true,
        LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
        LHIKOut = 0.25, -- (not actually inverse kinematics)
    },
}



sound.Add( {
	name = "r_mwiii_mtz762.first.BoltBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/raise_first_boltpull.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.first.BoltFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/raise_first_boltfwd.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.20MagGrab",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_maggrab.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.20MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_smagout.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.20MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_smaghit.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.20MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_smagin.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.20MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_magout_empty.wav"
} )




sound.Add( {
	name = "r_mwiii_mtz762.20MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_maghit.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.20MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_magin.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.ChargeBack",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_empty_chargeback.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.ChargeFwd",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_empty_chargefwd.wav"
} )



sound.Add( {
	name = "r_mwiii_mtz762.40MagGrab",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_xmaggrab.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagOut",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_xmagout.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagHit",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_xmaghit.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagIn",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_xmagin.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagOutEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_empty_xmagout.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagHitEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_empty_xmaghit.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagInEmpty",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_empty_xmagin.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.20MagOutFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_smagout.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.20MagHitFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_xmaghit.wav"
} )


sound.Add( {
	name = "r_mwiii_mtz762.20MagInFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_xmagin.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagOutFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_magout.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagHitFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_maghit.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.40MagInFast",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_magin.wav"
} )

sound.Add( {
	name = "r_mwiii_mtz762.FastCharge",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/mwiii/mtz762/reload_fast_charge.wav"
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





SWEP.RejectAttachments = {
    ["uc_tp_fastreload"] = true,
}


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Ironsights",
        Slot = "optic",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         Offset = {
        vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         },
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -2.88, -2),
         vmax = Vector(0, -2.88, 6),
     }, 
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Default Flash Hider",
        Slot = "muzzle_ar",
        InstalledEles = {"nomuz"}, -- activate these AttachmentElements if something is installed
        Bone = "weapon",
        Offset = {
        vpos = Vector(0, -1.22, 19.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 00, -90),
         }
    },
    {
        PrintName = "Grip",
        DefaultAttName = "None",
        Slot = "wz_foregrip",
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
         SlideAmount = { -- how far this attachment can slide in both directions.
         vmin = Vector(0, -0.5, 9),
         vmax = Vector(0, -0.5, 12),
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
        vpos = Vector(-1, -1.20,13.5), -- offset that the attachment will be relative to the bone
        vang = Angle(90, 0, 180),
         }
    },
    {
        PrintName = "Magazine",
        DefaultAttName = "20 Round Magazine",
        ExcludeFlags = {"amp_magged"},
        Slot = "wz_mtz762_mags",
    },
    {
        PrintName = "Conversion Kit",
        DefaultAttName = "None",
        Slot = "wz_mtz762_amp",
    },
       {
        PrintName = "Perks",
        DefaultAttName = "No Perk Package",
        Slot = {"uc_tp","wz_perks"}
    },

}
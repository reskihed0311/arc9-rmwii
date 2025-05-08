
AddCSLuaFile() 
  




SWEP.Base = "arc9_base"
SWEP.ARC9 = true

SWEP.Slot = 2
SWEP.CanLean = false
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Warzone 2.0"
SWEP.SubCategory = "Battle Rifle"

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.FreeAimRadiusMultSights = 0

SWEP.PrintName = "MTZ-762"


SWEP.Class = "Battle Rifle"


SWEP.NeverPhysBullet = true
SWEP.ViewModel = "models/weapons/r_mwii/br/arc9_r_mwii_mtz762.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -8),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-4.5, 2, -5),
    TPIKAng = Angle(-12, -0, 180),
    Scale = 1,

    TPIKPosSightOffset = Vector(-1, 2, -3),
}

SWEP.Description = [[A fully automatic Battle Rifle designed to send hard-hitting 7.62 rounds downrange at high velocity.]]



SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
   {
        Mode = 1,
        -- add other attachment modifiers
    }
}

SWEP.Crosshair = true


SWEP.DefaultBodygroups = "000000000000000000000000000000000000"

SWEP.ViewModelFOVBase = 70 -- Set to override viewmodel FOV





////////////////////////////////////////// BALANCE

SWEP.AimDownSightsTime = 0.65 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

SWEP.Sway = 2 -- How much the gun sways.

SWEP.RPM = 540

SWEP.Ammo = "ar2"

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.

SWEP.SpeedMult = 0.85
SWEP.SpeedMultSights = 0.8
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultCrouch = 0.5

SWEP.Penetration = 13.5 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.9 -- The damage multiplier after all penetration distance is spent.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.15 -- If the angle is right, what is the chance that a ricochet can occur?


-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.35 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0

SWEP.RecoilDissipationRate = 5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 0.3 -- How long recoil must stay after last shoot

SWEP.RecoilPerShot = 5
SWEP.RecoilMax = 15

SWEP.PushBackForce = 0 -- Push the player back when shooting.


SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true -- Visual recoil actually affects your aim point.

SWEP.VisualRecoilUp = 0.01 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.05 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0.23 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(2, 4, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 1.5 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.1

-- SWEP.VisualRecoilMult = 1
-- SWEP.VisualRecoilADSMult = 0.1
-- SWEP.VisualRecoilPunchADSMult = 0.1

SWEP.VisualRecoil = 1.05
SWEP.VisualRecoilMultSights = 1.5
SWEP.VisualRecoilPositionBump = 1.5
SWEP.VisualRecoilPositionBumpUp = 0.08 -- its a mult


SWEP.VisualRecoilDampingConst = nil -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 1
SWEP.VisualRecoilSpringPunchDamping = nil -- ehh another val for "eft" recoil, 6 is default

SWEP.VisualRecoilThinkFunc = nil -- wawa, override DampingConst, SpringMagnitude, SpringPunchDamping here 
-- function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     if recamount > 3 then
--         return springconstant * 100, VisualRecoilSpringMagnitude * 1, PUNCH_DAMPING * 1
--     end
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = nil -- wawa, override Up, Side, Roll here 
-- function(up, side, roll, punch, recamount)
--     if recamount > 2 then
--         return up * 5, side * 1.5, roll, punch * 0.9
--     end
--     return up, side, roll, punch
-- end

SWEP.RecoilKick = 0.3 -- Camera recoil
SWEP.RecoilKickDamping = 60.151 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = 0.7 -- thing for eft, set to true if you want camera go up (only visually) as recoil increases, SWEP.Recoil * SWEP.RecoilKick = effect of this

-- Additional subtle visual recoil, in case your gun doesn't have animated fire. Acts like a second spring added on top with limited duration
-- SWEP.SubtleVisualRecoil = 1 -- multiplier, set to something to enable this thing
-- SWEP.SubtleVisualRecoilDirection = 0 -- roll angle, 5 is to right, -5 to left, 0 is nothing etc
-- SWEP.SubtleVisualRecoilSpeed = 1 -- speed of it, be careful with this, 0.3 - 1.75


-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 50 -- Damage done at point blank range
SWEP.DamageMin = 30 -- Damage done at maximum range

SWEP.ImpactForce = 0 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 36000 -- In Hammer units, how far bullets can travel, period.




SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.6,
    [HITGROUP_RIGHTARM] = 0.6,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

-------------------------- SPREAD

SWEP.Spread = 0.00210

SWEP.UseDispersion = false -- Use this for shotguns - Additional random angle to spread, same for each pellet
SWEP.DispersionSpread = 0.2 -- SWEP.Spread will be clump spread, and this will be dispersion of clump

SWEP.SpreadAddMove = 0.015 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.025 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0.15 -- Applied when not sighted.
SWEP.SpreadAddSighted = 0 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.3 -- Applied when crouching.

SWEP.SpreadAddRecoil = nil -- Applied per unit of recoil.

-- Limit the effect of recoil on modifiers to this much.
-- Because the per shot modifier used to be broken and effectively had a limit of 1, it is set to 1 by default. You should probably set it higher.
SWEP.RecoilModifierCap = 1

---------------------- FX



SWEP.DropMagazineModel = nil -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {} -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineSkin = 0 -- Model skin of mag.
SWEP.DropMagazineTime = 0.25
SWEP.DropMagazineQCA = nil -- QC Attachment drop mag from, would drop from shell port if not defined
SWEP.DropMagazinePos = Vector(0, 0, 0) -- offsets
SWEP.DropMagazineAng = Angle(0, 0, 0)
SWEP.DropMagazineVelocity = Vector(0, 0, 0) -- Put something here if your anim throws the mag with force


SWEP.TracerColor = Color(255, 255, 190) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.



SWEP.ShootSound = "arc9_rmwii/mtz762/fire_fp.wav"
SWEP.ShootSoundSilenced = "arc9_rmwii/mtz762/fire_sup.wav"  


SWEP.MuzzleParticle = "muzzleflash_FAMAS" -- Used for some muzzle effects.



SWEP.AfterShotEffect = "arc9_aftershoteffect"



SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable

SWEP.RicochetSounds = ARC9.RicochetSounds


SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA = nil -- QC Attachment that controls after shot particle.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 3 -- QC Attachment for camera movement.


SWEP.HideBones = {"mag2"} -- bones to hide in third person and customize menu. {"list", "of", "bones"}



SWEP.ReloadHideBoneTables = { -- works only with TPIK
    [1] = {"mag1"},
    [2] = {"mag2"}
}




-------------------------- POSITIONS


SWEP.CantPeek = true -- set to true if you dont want peeking on this gnu

SWEP.IronSights = {
    Pos = Vector(-2.441, -3, -0.16),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
    Blur = true, -- If arc9_fx_adsblur 1 then blur gun in that ironsights. Disable if your "ironsights" are not real ironsights
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-3, 15, -5),
    Ang = Angle(0, 0, -45),
}



-- Alternative "resting" position
SWEP.ActivePos = Vector(-0.1, -1, -0.8)
SWEP.ActiveAng = Angle(0, 0, 0)



SWEP.RestPos = Vector(3, 0, 0)
SWEP.RestAng = Angle(35, -10, -20)


SWEP.CrouchPos = Vector(0, 0, 0)
SWEP.CrouchAng = Angle(0, 0, 0)



--------------------------- ATTS

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
    if eles["wz2_sh_optics"] then
        mdl:SetBodygroup(1, 1)
        mdl:SetBodygroup(2, 1)
    end
        if eles["muzzle_remover"] then
            mdl:SetBodygroup(6, 1) -- Change the bodygroup index and value as needed
    end
end


SWEP.AttachmentElements = {
    ["amp_soviet"] = {
        Bodygroups = {
            {0, 1},
            {8, 1},
        },
    },
    ["xmag_soviet"] = {
        Bodygroups = {
            {5, 1},
        },
    },
}



SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "Ironsights",
        Category = {"wz2_sh_optics"},
        Bone = "weapon",
        Pos = Vector(0,-2.85,0.5),
        Ang = Angle(90,-90,0),
    } ,
   {
        PrintName = "Handguard",
        DefaultName = "MTZ Factory Handguard",
        Category = {"wz2_mtz_hgs"},
        Bone = "weapon",
        Pos = Vector(0,-1.2,8),
        Ang = Angle(90,-90,0),
    } ,
   {
        PrintName = "Muzzle",
        DefaultName = "Default Flashhider",
        Category = {"wz2_sh_ar_muzzle"},
        Bone = "weapon",
        Pos = Vector(0,-1.30,20),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        Category = {"wz2_sh_fgs"},
        Bone = "weapon",
        Pos = Vector(0,-0.52,11),
        Ang = Angle(90,-90,0),
    },
    {
        PrintName = "Laser",
        DefaultName = "None",
        ExcludeElements = {"carbineshroud"},
        Category = {"wz2_sh_ar_tac"},
        Bone = "weapon",
        Pos = Vector(-1,-1.30,13),
        Ang = Angle(90,0,0),
    },
    {
        PrintName = "Magazine",
        DefaultName = "20 Round Magazine",
        Category = {"wz2_mtz762_mags"},
        Bone = "mag",
        Pos = Vector(0,0,0),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Pistol Grip",
        DefaultName = "DEMO Pistol Grip",
        Category = {"wz2_mtz_pgrip"},
        Bone = "weapon",
        Pos = Vector(0,2.5,-2.6),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Stocks",
        DefaultName = "DEMO Factory Stock",
        Category = {"wz2_mtz_stocks"},
        Bone = "weapon",
        Pos = Vector(0,-1.5,-5),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Receiver (BLUEPRINT / CONVERSION)",
        DefaultName = "Tempus Default Receiver",
        Category = {"wz2_mtz762_receivers"},
        Bone = "weapon",
        Pos = Vector(0,0,0),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Camo",
        Category = {"universal_camo"},
        Bone = "weapon",
        Pos = Vector(0, 0, 0),
        CosmeticOnly = true,
    },
}

--------------------------- ANIM RELATED



local Translate_XMag_soviet = {
    ["reload"] = "reload_s_40",
    ["reload_empty"] = "reload_empty_s_40",
    ["inspect"] = "inspect_s_40",
}





SWEP.Hook_TranslateAnimation = function(wep, anim)
    -- Check for XMag (45-round mag) and apply reload animations
    local xmag_soviet = wep:HasElement("xmag_soviet")
    if xmag_soviet then
        if Translate_XMag_soviet[anim] then
            return Translate_XMag_soviet[anim]  -- Return the reload animation for 45-round mag
        end
    end
end


SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"



SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [1] = "bullet_chamber",
     [2] = "bullet_1",
     [3] = "bullet_2",
     [4] = "bullet_3",
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["inspect_empty"] = {
        Source = "idle_empty",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["holster_empty"] = {
        Source = "holster_empty",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        EjectAt = 0,
    },
    ["fire"] = {
        Source = "fire",
        EjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        EjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        EjectAt = 0,
    },
    ["inspect"] = {
        Source = "inspect_20",
        EventTable = {
            {s = "arc9_rmwii/mtz762/inspect_raise.wav", t = 0 },
            {s = "arc9_rmwii/mtz762/inspect_maggrab.wav", t = 1.40},
            {s = "arc9_rmwii/mtz762/inspect_magout.wav", t = 1.48},
            {s = "arc9_rmwii/mtz762/inspect_magmvmnt2.wav", t = 2.5},
            {s = "arc9_rmwii/mtz762/inspect_maghit2.wav", t = 3.35},
            {s = "arc9_rmwii/mtz762/inspect_magin.wav", t = 3.75},
            {s = "arc9_rmwii/mtz762/inspect_boltback.wav", t = 4.38},
            {s = "arc9_rmwii/mtz762/inspect_boltfwd.wav", t = 5.15},
        },
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
    },
    ["reload"] = {
        Source = "reload_20",
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
        EventTable = {
            {s = "arc9_rmwii/mtz762/raise_quick.wav", t = 0},
            {s = "arc9_rmwii/mtz762/reload_maggrab.wav", t = 0.78},
            {s = "arc9_rmwii/mtz762/reload_magout.wav", t = 0.8},
            {s = "arc9_rmwii/mtz762/reload_maghit.wav", t = 1.4},
            {s = "arc9_rmwii/mtz762/reload_magin.wav", t = 1.5},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty_20",
        EventTable = {
            {s = "arc9_rmwii/mtz762/reload_magout_empty.wav", t = 0.3},
            {s = "arc9_rmwii/mtz762/reload_maghit.wav", t = 1.82},
            {s = "arc9_rmwii/mtz762/reload_magin_empty.wav", t = 1.9},
            {s = "arc9_rmwii/mtz762/reload_empty_chargeback.wav", t = 2.6},
            {s = "arc9_rmwii/mtz762/reload_empty_chargefwd.wav", t = 2.68},
        },
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
    },
    ["reload_s_40"] = {
        Source = "reload_amp_40",
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
        EventTable = {
            {s = "arc9_rmwii/mtz762/raise_quick.wav", t = 0},
            {s = "arc9_rmwii/mtz762/reload_amp_xmagout.wav", t = 0.67},
            {s = "arc9_rmwii/mtz762/reload_amp_xmaghit.wav", t = 1.3},
            {s = "arc9_rmwii/mtz762/reload_amp_xmagin.wav", t = 1.50},
        }
    },
    ["reload_empty_s_40"] = {
        Source = "reload_empty_amp_40",
        EventTable = {
            {s = "arc9_rmwii/mtz762/reload_amp_xmagout_empty.wav", t = 0.35},
            {s = "arc9_rmwii/mtz762/reload_amp_xmaghit_empty2.wav", t = 1.92},
            {s = "arc9_rmwii/mtz762/reload_amp_xmagin_empty.wav", t = 2.05},
            {s = "arc9_rmwii/mtz762/reload_empty_chargeback.wav", t = 2.7},
            {s = "arc9_rmwii/mtz762/reload_empty_chargefwd.wav", t = 2.85},
        },
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
    },
    ["inspect_s_40"] = {
        Source = "inspect_amp_40",
        EventTable = {
            {s = "arc9_rmwii/mtz762/inspect_raise.wav", t = 0 },
            {s = "arc9_rmwii/mtz762/inspect_amp_xmaggrab.wav", t = 1.40},
            {s = "arc9_rmwii/mtz762/inspect_amp_xmagout.wav", t = 1.48},
            {s = "arc9_rmwii/mtz762/inspect_magmvmnt2.wav", t = 2.5},
            {s = "arc9_rmwii/mtz762/inspect_amp_xmaghit.wav", t = 3.35},
            {s = "arc9_rmwii/mtz762/inspect_amp_xmagin.wav", t = 3.75},
            {s = "arc9_rmwii/mtz762/inspect_boltback.wav", t = 4.38},
            {s = "arc9_rmwii/mtz762/inspect_boltfwd.wav", t = 5.15},
        },
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 1,
                lhik = 1,
                rhik = 0,
            },
        },
    },
    ["ready"] = {
        Source = "ready",
        IKTimeLine = { -- t is in fraction of animation
            {
                t = 0.0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0,
            },
            {
                t = 0.90,
                lhik = 1,
                rhik = 0,
            },
        },
        EventTable = {
            {s = "arc9_rmwii/mtz762/raise_first.wav", t = 0},
            {s = "arc9_rmwii/mtz762/raise_first_boltpull.wav", t = 0.38},
            {s = "arc9_rmwii/mtz762/raise_first_boltfwd.wav", t = 0.65},
            {s = "arc9_rmwii/mtz762/raise_first_end.wav", t = 1.25},
        }
    },
}

 


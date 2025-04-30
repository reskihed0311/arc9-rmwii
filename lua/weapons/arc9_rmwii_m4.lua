
AddCSLuaFile() 
  





SWEP.Base = "arc9_base"
SWEP.ARC9 = true

SWEP.Slot = 2
SWEP.CanLean = false
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Warzone 2.0"
SWEP.SubCategory = "Assault Rifle"

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.FreeAimRadiusMultSights = 0

SWEP.PrintName = "M4"


SWEP.Class = "Assault Rifle"


SWEP.NeverPhysBullet = true
SWEP.ViewModel = "models/weapons/r_mwii/ar/arc9_r_mwii_m4.mdl"
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

SWEP.Description = [[The flagship rifle of the M4 Platform. This reliable workhorse is a jack-of-all-trades that performs well in most combat scenarios.]]



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

SWEP.ViewModelFOVBase = 75 -- Set to override viewmodel FOV





////////////////////////////////////////// BALANCE

SWEP.AimDownSightsTime = 0.4 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

SWEP.Sway = 1 -- How much the gun sways.

SWEP.RPM = 850

SWEP.Ammo = "smg1"

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.

SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 1
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 0.5

SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.8 -- The damage multiplier after all penetration distance is spent.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.15 -- If the angle is right, what is the chance that a ricochet can occur?


-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 3 -- Multiplier for vertical recoil

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

SWEP.VisualRecoil = 1
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

SWEP.RecoilKick = 0.1 -- Camera recoil
SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = 0.7 -- thing for eft, set to true if you want camera go up (only visually) as recoil increases, SWEP.Recoil * SWEP.RecoilKick = effect of this

-- Additional subtle visual recoil, in case your gun doesn't have animated fire. Acts like a second spring added on top with limited duration
-- SWEP.SubtleVisualRecoil = 1 -- multiplier, set to something to enable this thing
-- SWEP.SubtleVisualRecoilDirection = 0 -- roll angle, 5 is to right, -5 to left, 0 is nothing etc
-- SWEP.SubtleVisualRecoilSpeed = 1 -- speed of it, be careful with this, 0.3 - 1.75


-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.ImpactForce = 0 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.




SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.6,
    [HITGROUP_RIGHTARM] = 0.6,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
}

-------------------------- SPREAD

SWEP.Spread = 0.00185

SWEP.UseDispersion = false -- Use this for shotguns - Additional random angle to spread, same for each pellet
SWEP.DispersionSpread = 0.2 -- SWEP.Spread will be clump spread, and this will be dispersion of clump

SWEP.SpreadAddMove = 0.01 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.02 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0.1 -- Applied when not sighted.
SWEP.SpreadAddSighted = 0 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.5 -- Applied when crouching.

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



SWEP.ShootSound = "arc9_rmwii/m4/m4_fire_fp.wav"
SWEP.ShootSoundSilenced = "arc9_rmwii/m4/m4_fire_sup.wav"  


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
    Pos = Vector(-2.227, -2.5, 0.079),
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
SWEP.ActivePos = Vector(0.5, -0.5, -0.5)
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
        mdl:SetBodygroup(2, 1)
        mdl:SetBodygroup(1, 1)
    end
        if eles["muzzle_remover"] then
            mdl:SetBodygroup(5, 1) -- Change the bodygroup index and value as needed
    end
end


SWEP.AttachmentElements = {
    ["skullbreaker"] = {
        Bodygroups = {
            {0, 2},
        },
    },
    ["shortfuse"] = {
        Bodygroups = {
            {0, 4},
        },
    },
    ["carminecarbine"] = {
        Bodygroups = {
            {0, 3},
        },
    },
    ["unionguard"] = {
        Bodygroups = {
            {0, 1},
        },
    },
    ["pgrip_none"] = {
        Bodygroups = {
            {7, 1},
        },
    },
    ["419exf"] = {
        Bodygroups = {
            {5, 5},
            {3, 1},
            {2, 5},
        },
        AttPosMods = {
            [3] = { -- slot index
            Pos = Vector(0,-1.30,19.9),
            Ang = Angle(90,-90,0),
            },
            [4] = { -- slot index
            Pos = Vector(0,-0.32,11.5),
        Ang = Angle(90,-90,0),
            },
            [5] = { -- slot index
            Pos = Vector(-1.1,-1.28,18.4),
            Ang = Angle(90,0,0),
            },
        }
    },
    ["nomuzzle"] = {
        Bodygroups = {
            {5, 1},
        },
    },
    ["stocks_none"] = {
        Bodygroups = {
            {6, 1},
        },
    },
    ["trench"] = {
        Bodygroups = {
            {3, 1},
            {5, 3},
        },
    },
    ["carbineshroud"] = {
        Bodygroups = {
            {3, 1},
            {5, 4},
            {2, 4},
        },
        AttPosMods = {
            [3] = { -- slot index
            Pos = Vector(0,-1.30,17),
            Ang = Angle(90,-90,0),
            },
            [4] = { -- slot index
           Pos = Vector(0,0.05,8),
        Ang = Angle(90,-90,0),
            },
        }
    },
    ["tempusfirebrand"] = {
        Bodygroups = {
            {3, 1},
            {5, 6},
            {2, 6},
        },
        AttPosMods = {
            [3] = { -- slot index
            Pos = Vector(0,-1.30,11),
            Ang = Angle(90,-90,0),
            },
            [4] = { -- slot index
           Pos = Vector(0,-0.2,8),
        Ang = Angle(90,-90,0),
            },
            [5] = { -- slot index
            Pos = Vector(-1.1,-1.28,9.5),
            Ang = Angle(90,0,0),
             },
             [5] = { -- slot index
             Pos = Vector(-1.1,-1.28,9.5),
             Ang = Angle(90,0,0),
              },
        }
    },
    ["xmag"] = {
        Bodygroups = {
            {4, 1},
        },
    },
    ["xmaglarge"] = {
        Bodygroups = {
            {4, 2},
        },
    },
    ["mag_shortfuse"] = {
        Bodygroups = {
            {4, 3},
        },
    },
    ["mag_unionguard"] = {
        Bodygroups = {
            {4, 4},
        },
    },
    ["xmag_skullbreaker"] = {
        Bodygroups = {
            {4, 5},
        },
    },
    ["tth4"] = {
        Bodygroups = {
            {3, 1},
            {5, 2},
            {2, 2},
        },
        AttPosMods = {
            [3] = { -- slot index
            Pos = Vector(0,-1.30,14.5),
            Ang = Angle(90,-90,0),
            },
            [4] = { -- slot index
            Pos = Vector(0,-0.61,9.5),
            Ang = Angle(90,-90,0),
            },
            [5] = { -- slot index
              Pos = Vector(-1.1,-1.28,14.55),
        Ang = Angle(90,0,0),
            }
        }
    },
}



SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "Ironsights",
        Category = {"wz2_sh_optics"},
        Bone = "weapon",
        Pos = Vector(0,-2.4,1),
        Ang = Angle(90,-90,0),
    } ,
   {
        PrintName = "Handguard",
        DefaultName = "DEMO Handguard",
        Category = {"wz2_m4_hgs"},
        Bone = "weapon",
        Pos = Vector(0,-1.2,8),
        Ang = Angle(90,-90,0),
    } ,
   {
        PrintName = "Muzzle",
        DefaultName = "Default Flashhider",
        Category = {"wz2_sh_ar_muzzle"},
        Bone = "weapon",
        Pos = Vector(0,-1.30,16.5),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        Category = {"wz2_sh_fgs"},
        Bone = "weapon",
        Pos = Vector(0,-0.25,10.5),
        Ang = Angle(90,-90,0),
    },
    {
        PrintName = "Laser",
        DefaultName = "None",
        ExcludeElements = {"carbineshroud"},
        Category = {"wz2_sh_ar_tac"},
        Bone = "weapon",
        Pos = Vector(-1.1,-1.28,14.55),
        Ang = Angle(90,0,0),
    },
    {
        PrintName = "Magazine",
        DefaultName = "30 Round Magazine",
        Category = {"wz2_m4_mags"},
        Bone = "mag",
        Pos = Vector(0,0,0),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Pistol Grip",
        DefaultName = "DEMO Pistol Grip",
        Category = {"wz2_m4_pgrip"},
        Bone = "weapon",
        Pos = Vector(0,2.5,-2.6),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Stocks",
        DefaultName = "DEMO Factory Stock",
        Category = {"wz2_m4_stocks"},
        Bone = "weapon",
        Pos = Vector(0,-1.5,-5),
        Ang = Angle(90,-90,0),
    } ,
    {
        PrintName = "Receiver (BLUEPRINT)",
        DefaultName = "Tempus Default Receiver",
        Category = {"wz2_m4_receivers"},
        Bone = "weapon",
        Pos = Vector(0,0,0),
        Ang = Angle(90,-90,0),
    } ,
}

--------------------------- ANIM RELATED

local Translate_XMag = {
    ["reload"] = "reload_45",
    ["reload_empty"] = "reload_empty_45",
    ["inspect"] = "inspect_45",
}

local Translate_XMagLarge = {
    ["reload"] = "reload_60",
    ["reload_empty"] = "reload_empty_60",
    ["inspect"] = "inspect_60",
}


SWEP.Hook_TranslateAnimation = function(wep, anim)
    -- Check for XMag (45-round mag) and apply reload animations
    local xmag = wep:HasElement("xmag") or wep:HasElement("xmag_skullbreaker")
    if xmag then
        if Translate_XMag[anim] then
            return Translate_XMag[anim]  -- Return the reload animation for 45-round mag
        end
    end
    
    local xmaglarge = wep:HasElement("xmaglarge")
    if xmaglarge then
        if Translate_XMagLarge[anim] then
            return Translate_XMagLarge[anim]  -- Return the reload animation for 45-round mag
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
    ["inspect"] = {
        Source = "inspect_30",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_inspect_magout.wav", t = 0.3},
            {s = "arc9_rmwii/m4/m4_inspect_maghit.wav", t = 1.18},
            {s = "arc9_rmwii/m4/m4_inspect_magin.wav", t = 1.80},
            {s = "arc9_rmwii/m4/m4_inspect_boltback.wav", t = 3.1},
            {s = "arc9_rmwii/m4/m4_inspect_boltfwd.wav", t = 4.12},
            {s = "arc9_rmwii/m4/m4_inspect_assist.wav", t = 4.42},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 5.35},
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
    ["inspect_45"] = {
        Source = "inspect_30",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_inspect_xmagout.wav", t = 0.3},
            {s = "arc9_rmwii/m4/m4_inspect_xmaghit.wav", t = 1.5},
            {s = "arc9_rmwii/m4/m4_inspect_xmagin.wav", t = 2},
            {s = "arc9_rmwii/m4/m4_inspect_boltback.wav", t = 3.1},
            {s = "arc9_rmwii/m4/m4_inspect_boltfwd.wav", t = 4.12},
            {s = "arc9_rmwii/m4/m4_inspect_assist.wav", t = 4.42},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 5.35},
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
    ["inspect_60"] = {
        Source = "inspect_60",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_inspect_xmaglrgout.wav", t = 0.3},
            {s = "arc9_rmwii/m4/m4_inspect_xmaglrghit.wav", t = 1.5},
            {s = "arc9_rmwii/m4/m4_inspect_xmagin.wav", t = 2},
            {s = "arc9_rmwii/m4/m4_inspect_boltback.wav", t = 3.1},
            {s = "arc9_rmwii/m4/m4_inspect_boltfwd.wav", t = 4.12},
            {s = "arc9_rmwii/m4/m4_inspect_assist.wav", t = 4.42},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 5.35},
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
        Source = "reload_30",
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
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_magout.wav", t = 0.65},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1},
            {s = "arc9_rmwii/m4/m4_maghit.wav", t = 1.25},
            {s = "arc9_rmwii/m4/m4_magin.wav", t = 1.38},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 2.1},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty_30",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_magout_empty.wav", t = 0.08},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1},
            {s = "arc9_rmwii/m4/m4_maghit_empty.wav", t = 1.45},
            {s = "arc9_rmwii/m4/m4_magin_empty.wav", t = 1.62},
            {s = "arc9_rmwii/m4/m4_empty_bolt.wav", t = 2.06},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 2.5},
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
    ["reload_45"] = {
        Source = "reload_45",
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
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_xmagout.wav", t = 0.75},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1.2},
            {s = "arc9_rmwii/m4/m4_xmaghit.wav", t = 1.32},
            {s = "arc9_rmwii/m4/m4_xmagin.wav", t = 1.45},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 2.1},
        }
    },
    ["reload_empty_45"] = {
        Source = "reload_empty_45",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_xmagout_empty.wav", t = 0.28},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1},
            {s = "arc9_rmwii/m4/m4_xmaghit_empty.wav", t = 1.55},
            {s = "arc9_rmwii/m4/m4_xmagin_empty.wav", t = 1.78},
            {s = "arc9_rmwii/m4/m4_empty_bolt.wav", t = 2.40},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 2.9},
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
    ["reload_60"] = {
        Source = "reload_60",
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
            {s = "arc9_rmwii/m4/m4_raise_quick.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_xmaglrgout.wav", t = 0.75},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1.2},
            {s = "arc9_rmwii/m4/m4_xmaglrghit.wav", t = 1.38},
            {s = "arc9_rmwii/m4/m4_xmaglrgin.wav", t = 1.56},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 2.5},
        }
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        EventTable = {
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 0},
            {s = "arc9_rmwii/m4/m4_xmaglrgout_empty.wav", t = 0.62},
            {s = "arc9_rmwii/m4/m4_magout_mvmnt1.wav", t = 1},
            {s = "arc9_rmwii/m4/m4_xmaglrghit_empty.wav", t = 2.1},
            {s = "arc9_rmwii/m4/m4_xmaglrgin_empty.wav", t = 2.3},
            {s = "arc9_rmwii/m4/m4_empty_bolt.wav", t = 2.8},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t=  3.31},
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
            {s = "arc9_rmwii/m4/m4_raise_first_boltback.wav", t = 0.25},
            {s = "arc9_rmwii/m4/m4_raise_first_boltfwd.wav", t = 0.80},
            {s = "arc9_rmwii/m4/m4_shoulder.wav", t = 1.35},
        }
    },
}



 




 


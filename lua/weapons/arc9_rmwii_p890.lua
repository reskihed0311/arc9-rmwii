
AddCSLuaFile() 
  





SWEP.Base = "arc9_base"
SWEP.ARC9 = true

SWEP.Slot = 1
SWEP.CanLean = false
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Warzone 2.0"
SWEP.SubCategory = "Pistols"

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.FreeAimRadiusMultSights = 0

SWEP.PrintName = "P890"


SWEP.Class = "Handgun"


SWEP.NeverPhysBullet = true
SWEP.ViewModel = "models/weapons/r_mwii/pi/arc9_r_mwii_p890.mdl"
SWEP.WorldModel = "models/weapons/w_pist_p228.mdl"
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

SWEP.Description = [[For close-quarters situations, the P890 semi-auto pistol takes advantage of accuracy, reliability, and a hard-hitting .45 Auto round.]]



SWEP.Firemodes = {
   {
        Mode = 1,
        -- add other attachment modifiers
    }
}

SWEP.Crosshair = true


SWEP.DefaultBodygroups = "000000000000000000000000000000000000"

SWEP.ViewModelFOVBase = 75 -- Set to override viewmodel FOV





////////////////////////////////////////// BALANCE

SWEP.AimDownSightsTime = 0.32 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.18 -- How long it takes to go from sprinting to being able to fire.

SWEP.Sway = 1 -- How much the gun sways.

SWEP.RPM = 300

SWEP.Ammo = "pistol"

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.




-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2.5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0

SWEP.RecoilDissipationRate = 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 0.1 -- How long recoil must stay after last shoot

SWEP.RecoilPerShot = 0.5
SWEP.RecoilMax = nil

SWEP.PushBackForce = 0 -- Push the player back when shooting.


SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true -- Visual recoil actually affects your aim point.

SWEP.VisualRecoilUp = 0.2 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.15 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0.4 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(2, 4, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 1.5 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.2

-- SWEP.VisualRecoilMult = 1
-- SWEP.VisualRecoilADSMult = 0.1
-- SWEP.VisualRecoilPunchADSMult = 0.1

SWEP.VisualRecoil = 1.2
SWEP.VisualRecoilMultSights = 0.1
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

SWEP.RecoilKick = 1 -- Camera recoil
SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = nil -- thing for eft, set to true if you want camera go up (only visually) as recoil increases, SWEP.Recoil * SWEP.RecoilKick = effect of this

-- Additional subtle visual recoil, in case your gun doesn't have animated fire. Acts like a second spring added on top with limited duration
-- SWEP.SubtleVisualRecoil = 1 -- multiplier, set to something to enable this thing
-- SWEP.SubtleVisualRecoilDirection = 0 -- roll angle, 5 is to right, -5 to left, 0 is nothing etc
-- SWEP.SubtleVisualRecoilSpeed = 1 -- speed of it, be careful with this, 0.3 - 1.75


-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 10 -- Damage done at maximum range

SWEP.ImpactForce = 0 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 1000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.




SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.35,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- SPREAD

SWEP.Spread = 0.01

SWEP.UseDispersion = false -- Use this for shotguns - Additional random angle to spread, same for each pellet
SWEP.DispersionSpread = 0.2 -- SWEP.Spread will be clump spread, and this will be dispersion of clump

SWEP.SpreadAddMove = nil -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = nil -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0.1 -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.001 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = nil -- Applied when crouching.

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



SWEP.ShootSound = "arc9_rmwii/p890/fire_fp.wav"
SWEP.ShootSoundSilenced = "arc9_rmwii/p890/fire_sil.wav"  


SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.



SWEP.AfterShotEffect = "arc9_aftershoteffect"



SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPitch = 80 -- for shell sounds
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
    Pos = Vector(-2.52, 0, 0.639),
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
    if eles["wz2_sh_optics_lp"] then
        mdl:SetBodygroup(2, 1)
        mdl:SetBodygroup(1, 1)
    end
end


SWEP.AttachmentElements = {
}



SWEP.Attachments = {
}

--------------------------- ANIM RELATED

local Translate_XMag = {
    ["reload"] = "reload_10",
    ["reload_empty"] = "reload_empty_10",
    ["inspect"] = "inspect_10",
}

local Translate_XMagLarge = {
    ["reload"] = "reload_12",
    ["reload_empty"] = "reload_empty_12",
    ["inspect"] = "inspect_12",
}


SWEP.Hook_TranslateAnimation = function(wep, anim)
    -- Check for XMag (45-round mag) and apply reload animations
    local xmag = wep:HasElement("xmag")
    if xmag then
        if Translate_XMag[anim] then
            return Translate_XMag[anim]  -- Return the reload animation for 45-round mag
        end
    end
    local xmag = wep:HasElement("xmaglarge")
    if xmag then
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
     [4] = "bullet_4",
     [5] = "bullet_5",
     [6] = "bullet_6",
     [7] = "bullet_7",
     [8] = "bullet_8",

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
        Source = "inspect_8",
        EventTable = {
            {s = "arc9_rmwii/p890/p890_raise.wav", t = 0},
            {s = "arc9_rmwii/p890/p890_inspect_decockdown.wav", t= 0.4},
            {s = "arc9_rmwii/p890/p890_inspect_decockup.wav", t= 0.65},
            {s = "arc9_rmwii/p890/p890_inspect_magout.wav", t=  1.80},
            {s = "arc9_rmwii/p890/p890_inspect_maghit.wav", t=  3},
            {s = "arc9_rmwii/p890/p890_inspect_magin.wav", t=  3.25},
            {s = "arc9_rmwii/p890/p890_inspect_slidepull.wav", t = 3.95},
            {s = "arc9_rmwii/p890/p890_inspect_sliderel.wav", t = 4.45},
            {s = "arc9_rmwii/p890/p890_inspect_hammerpull.wav", t = 4.95},
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
        Source = "reload_8",
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
            {s = "arc9_rmwii/p890/p890_raise.wav", t = 0},
            {s= "arc9_rmwii/p890/p890_magrel.wav", t = 0.70},
            {s= "arc9_rmwii/p890/p890_magout.wav", t = 0.75},
            {s = "arc9_rmwii/p890/p890_maghit.wav", t = 1.2},
            {s = "arc9_rmwii/p890/p890_magin.wav", t = 1.35},
        }
    },
    ["reload_empty"] = {
        Source = "reload_empty_8",
        EventTable = {
            {s = "arc9_rmwii/p890/p890_raise.wav", t = 0},
            {s = "arc9_rmwii/p890/p890_magout_empty.wav", t = 0.6},
            {s = "arc9_rmwii/p890/p890_maghit_empty.wav", t = 1.3},
            {s = "arc9_rmwii/p890/p890_magin.wav", t = 1.42},
            {s = "arc9_rmwii/p890/p890_chargeback.wav", t = 1.88},
            {s = "arc9_rmwii/p890/p890_chargefwd.wav", t = 2.18},
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
            {s = "arc9_rmwii/p890/p890_raise.wav", t = 0},
            {s = "arc9_rmwii/p890/p890_pull.wav", t= 0.41},
            {s = "arc9_rmwii/p890/p890_release.wav", t=0.70},
        }
    },
}



 




 


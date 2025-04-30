local ATT = {}


ATT = {}

ATT.Free = true

ATT.PrintName = "Union Guard Receiver"
ATT.CompactName = "UG Receiver"
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"



ATT.Category = "wz2_m4_receivers"
ATT.ActivateElements = {"unionguard"}

ARC9.LoadAttachment(ATT, "wz2_m4_unionguardrec")

ATT = {}

ATT.Free = true

ATT.PrintName = "Union Guard Magazine"
ATT.CompactName = "U.G Magazine"
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.Folder = "Blueprints"
ATT.Category = "wz2_m4_mags"
ATT.ActivateElements = {"mag_unionguard"}

ARC9.LoadAttachment(ATT, "wz2_m4_magug")

ATT = {}

ATT.Free = true

ATT.PrintName = "TT-H4 (Union Guard)"
ATT.CompactName = "H4 (UG)"
ATT.Icon = Material("")
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_hgs"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"tth4"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/bps/att_r_mwii_bp_hg_unionguard_tth4.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_bp_unionguardth4")



local ATT = {}



ATT = {}


ATT.Free = true

ATT.PrintName = "LOCKGRIP PRECISION-40 (Union Guard)"
ATT.CompactName = "PREC.40 (UG)"
ATT.Icon = Material("")
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_sh_fgs"
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/att/fg/bp/att_r_mwii_bp_fg_precision40_unionguard.mdl"

ATT.ModelOffset = Vector(0, 0, 0)


ATT.RecoilAdd = -0.15
ATT.SpeedMult = 0.9
ATT.SpeedMultSights = 0.8
ATT.SpeedMultShooting = 0.8
ATT.SpeedMultCrouch = 0.8

ATT.SpreadMultMove = 0.01 -- Applied when speed is equal to walking speed.
ATT.SpreadMultMidAir = 0.02 -- Applied when not touching the ground.
ATT.SpreadMultHipFire = 0.1 -- Applied when not sighted.
ATT.SpreadMultSighted = 0 -- Applied when sighted. Can be negative.

ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_bp_unionguardlockgrip40")

ATT = {}


ATT.Free = true


ATT.PrintName = "AIM-OP V4 (Union Guard)"
ATT.CompactName = "OPV4 (UG)"
ATT.Description = [[Union Guard Blueprint for the M4.]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_aimopv4_unionguard.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.5),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/aimopv4.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_bp_unionguardaimopv4")




ATT = {}


ATT.Free = true

ATT.PrintName = "FSS Convert V (Union Guard)"
ATT.CompactName = "FSS COV. V (UG)"
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/att/muz/att_r_mwii_bp_muz_unionguard_fsscovertv.mdl"
ATT.Scale = 1

ATT.Category = {"wz2_sh_ar_muzzle"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ActivateElements = {"muzzle_remover"}

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.ShootVolumeMult = 0.8
ATT.AimDownSightsTimeAdd = 0.01
ATT.SprintToFireTimeAdd = 0.01


ARC9.LoadAttachment(ATT, "wz_bp_unionguardfsscovertv")



ATT = {}


ATT.Free = true 

ATT.PrintName = "SZ 1MW PEQ (Union Guard)"
ATT.CompactName = "SZ 1MW PEQ (UG)"
ATT.Description = [[Union Guard Blueprint for the M4.]]
ATT.Folder = "Laser Blueprints"

ATT.Model = "models/weapons/r_mwii/ar/blueprints/mike4/atts/att_r_mwii_bp_tac_sz1mwpeqbox_unionguard.mdl"
ATT.Scale = 1
ATT.CantPeek = false

ATT.Category = {"wz2_sh_ar_tac"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Laser = true
ATT.LaserStrength = 1
ATT.LaserFlareMat = nil
ATT.LaserTraceMat = nil
ATT.LaserColor = Color(255, 0, 0)
ATT.LaserAttachment = 1


ARC9.LoadAttachment(ATT, "wz_bp_unionguard1mwpeqbox")
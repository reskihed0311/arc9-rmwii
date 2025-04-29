local ATT = {}

ATT = {}


ATT.Free = true


ATT.PrintName = "Cronen Mini Pro (Carmine Carbine)"
ATT.CompactName = "MiniPro (CC)"
ATT.Description = [[Carmine Carbine Blueprint for the M4.]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/ar/blueprints/mike4/atts/att_r_mwii_bp_opt_minipro_carmine.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.2),
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


ARC9.LoadAttachment(ATT, "wz_bp_cronenminipro_cc")


ATT = {}

ATT.Free = true

ATT.PrintName = "14' Carbine Shroud (Carmine Carbine)"
ATT.CompactName = "14' SHROUD (C.C)"
ATT.Icon = Material("")
ATT.Description = [[Carmine Carbine Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_hgs"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"carbineshroud"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/bps/att_r_mwii_bp_hg_carmine_14shroud.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_bp_shroud_cc")


ATT = {}

ATT.Free = true

ATT.PrintName = "RAVAGE-8 (Carmine Carbine)"
ATT.CompactName = "RAVAGE (C.C)"
ATT.Icon = Material("")
ATT.Description = [[Carmine Carbine Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_stocks"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"stocks_none"}

ATT.Model = "models/weapons/r_mwii/ar/sto/bp/att_r_mwii_bp_sto_carmine_ravage8.mdl"

ATT.ModelOffset = Vector(-5, -2.22, 2.5)


ARC9.LoadAttachment(ATT, "wz2_bp_ravage8_cc")


ATT = {}


ATT.Free = true

ATT.PrintName = "HEX-40 (Carmine Carbine)"
ATT.CompactName = "HEX-40 (C.C)"
ATT.Icon = Material("")
ATT.Description = [[Carmine Carbine Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_sh_fgs"
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/ar/blueprints/mike4/atts/att_r_mwii_bp_fg_hex40_carmine.mdl"

ATT.ModelOffset = Vector(0, 0, 0)


ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_bp_hex40_carminecarbine")



ATT = {}


ATT.Free = true

ATT.PrintName = "SILENTFIRE XG6 (Carmine Carbine)"
ATT.CompactName = "XG6 (C.C)"
ATT.Description = [[Carmine Carbine Blueprint for the M4.]]
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/ar/blueprints/mike4/atts/att_r_mwii_bp_muz_carminecarbine_silentfirexg6.mdl"
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


ARC9.LoadAttachment(ATT, "wz_bp_silentfirexg6_cc")

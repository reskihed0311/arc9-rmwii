local ATT = {}

ATT = {}

ATT.Free = true

ATT.PrintName = "Short Fuse Receiver"
ATT.CompactName = "S.F Receiver"
ATT.Description = [[Short Fuse Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"



ATT.Category = "wz2_m4_receivers"
ATT.ActivateElements = {"shortfuse"}

ARC9.LoadAttachment(ATT, "wz2_m4_recsf")


ATT = {}

ATT.Free = true

ATT.PrintName = "Short Fuse Magazine"
ATT.CompactName = "S.F Magazine"
ATT.Description = [[Short Fuse Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.Folder = "Blueprints"
ATT.Category = "wz2_m4_mags"
ATT.ActivateElements = {"mag_shortfuse"}

ARC9.LoadAttachment(ATT, "wz2_m4_magsf")

ATT = {}

ATT.Free = true

ATT.PrintName = "7.5' TEMPUS FIREBRAND (ShortFuse)"
ATT.CompactName = "7.5' (SHORTFUSE)"
ATT.Icon = Material("")
ATT.Description = [[Short Fuse Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_hgs"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"tempusfirebrand"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/bps/att_r_mwii_bp_hg_shortfuse_firebrand.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_bp_tempusfirebrand_shortfuse")




ATT = {}


ATT.Free = true

ATT.PrintName = "Sakin ZX Grip (Short Fuse)"
ATT.CompactName = "ZX (SHORTFUSE)"
ATT.Description =  [[Short Fuse Blueprint for the M4.]]



ATT.Model = "models/weapons/r_mwii/ar/pgrip/bp/att_r_mwii_bp_grip_shortfuse_sakinzx.mdl"
ATT.ModelOffset = Vector(-7.52, -2.22, 6.5)

ATT.Category = {"wz2_m4_pgrip"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ActivateElements = {"pgrip_none"}



ARC9.LoadAttachment(ATT, "wz_bp_sakinzxgripshortfuse")



ATT = {}

ATT.Free = true

ATT.PrintName = "TEMPUS P80 STRIKE (Short Fuse)"
ATT.CompactName = "P80 (SHORTFUSE)"
ATT.Icon = Material("")
ATT.Description = [[Short Fuse Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_stocks"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"stocks_none"}

ATT.Model = "models/weapons/r_mwii/ar/sto/bp/att_r_mwii_bp_sto_shortfuse_p80.mdl"

ATT.ModelOffset = Vector(-5, -2.22, 2.5)


ARC9.LoadAttachment(ATT, "wz2_bp_p80_shortfuse")


ATT = {}


ATT.Free = true

ATT.PrintName = "Echoline GS-X (Short Fuse)"
ATT.CompactName = "GS-X (Short Fuse)"
ATT.Description = [[Short Fuse Blueprint for the M4.]]


ATT.Model = "models/weapons/r_mwii/ar/blueprints/mike4/atts/att_r_mwii_bp_muz_shortfuse_echolinegsx.mdl"
ATT.Scale = 1

ATT.Category = {"wz2_sh_ar_muzzle"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ActivateElements = {"muzzle_remover"}
ATT.Folder = "Blueprints"
ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.ShootVolumeMult = 0.5
ATT.AimDownSightsTimeAdd = 0.01
ATT.SprintToFireTimeAdd = 0.01


ARC9.LoadAttachment(ATT, "wz_bp_echolinegsx_shortfuse")



ATT = {}


ATT.Free = true


ATT.PrintName = "SZ LoneWolf (ShortFuse)"
ATT.CompactName = "SZ LW (Short Fuse)"
ATT.Description = [[Short Fuse Blueprint for the M4.]]

ATT.Folder = "Holosight Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_szlonewolf_shortfuse.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.55),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/lonewolfstyle.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_bp_szlonewolf_shortfuse")
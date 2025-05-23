local ATT = {}


ATT = {}

ATT.Free = true

ATT.PrintName = "Assault-60 (SB)"
ATT.CompactName = "AS-60 (SB)"
ATT.Description = [[Skull Breaker Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.Folder = "Blueprints"
ATT.Category = "wz2_m4_stocks"
ATT.ActivateElements = {"assault60sb"}

ARC9.LoadAttachment(ATT, "wz2_m4_assault60sb")


ATT = {}

ATT.Free = true

ATT.PrintName = "SkullBreaker Receiver"
ATT.CompactName = "SB Receiver"
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"



ATT.Category = "wz2_m4_receivers"
ATT.ActivateElements = {"skullbreaker"}

ARC9.LoadAttachment(ATT, "wz2_m4_recsb")

ATT = {}

ATT.SpeedMult = 0.90
ATT.AimDownSightsTimeMult = 1.15


ATT.Free = true

ATT.PrintName = "45 Round Mag (SkullBreaker)"
ATT.CompactName = "45 Mag (SB)"
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {"Slower Reload Animation"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Folder = "Blueprints"

ATT.ClipSizeOverride = 45

ATT.Category = "wz2_m4_mags"
ATT.ActivateElements = {"xmag_skullbreaker"}

ARC9.LoadAttachment(ATT, "wz2_m4_xmagsb")

ATT = {}

-- ATTS SHARED FOR ALL TEMPUS TRENCH PRO --

ATT.SprintToFireTimeMult = 0.8
ATT.RangeMaxMult = 1.2
ATT.SpeedMultSights = 1.15

ATT.RecoilMult = 1.5
ATT.RecoilSideMult = 1.5

ATT.Free = true

ATT.PrintName = "TEMPUS TRENCH PRO (SKULLBREAKER)"
ATT.CompactName = "TRENCH (SB)"
ATT.Icon = Material("")
ATT.Description = [[Skull Breaker Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_hgs"
ATT.Folder = "Blueprints"
ATT.ActivateElements = {"trench"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/bps/att_r_mwii_bp_hg_skullbreaker_trench.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_bp_trenchprosb")



ATT = {}

ATT.SwayMult = 0.85
ATT.RecoilMult = 0.95

ATT.Free = true

ATT.PrintName = "Support CP90 Grip (Skull Breaker)"
ATT.CompactName = "CT90 (SB)"
ATT.Description =  [[Skull Breaker Blueprint for the M4.]]


ATT.Model = "models/weapons/r_mwii/ar/pgrip/bp/att_r_mwii_bp_grip_skullbreaker_ct90.mdl"
ATT.ModelOffset = Vector(-7.52, -2.22, 6.5)

ATT.Category = {"wz2_m4_pgrip"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ActivateElements = {"pgrip_none"}



ARC9.LoadAttachment(ATT, "wz_bp_supportcp90gripsb")




ATT = {}


ATT.Free = true


ATT.PrintName = "SZ Recharge-DX (Skull Breaker)"
ATT.CompactName = "SZ-DX (SB)"
ATT.Description = [[Skull Breaker Blueprint for the M4.]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_rechargedx_skullbreaker.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.35),
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


ARC9.LoadAttachment(ATT, "wz_bp_szrechargedx_sb")



ATT = {}


ATT.Free = true

ATT.PrintName = "EXF BACKDRAFT GRIP (SkullBreaker)"
ATT.CompactName = "BACKDRAFT (SB)"
ATT.Icon = Material("")
ATT.Description = [[Skull Breaker Blueprint for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_sh_fgs"
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/att/fg/bp/att_r_mwii_bp_fg_exf_backdraft_skullbreaker.mdl"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.RecoilMult = 0.95
ATT.SpeedMultSights = 1.15
ATT.SpeedMultShooting = 0.90
ATT.SpreadMultHipFire =  0.85 
ATT.AimDownSightsTimeMult = 1.25
ATT.SpeedMult = 0.95

ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_bp_exfbackdraft_sb")
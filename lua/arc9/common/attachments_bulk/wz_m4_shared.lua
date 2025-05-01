local ATT = {}


ATT = {}

ATT.Free = true

ATT.PrintName = "45 Round Mag"
ATT.CompactName = "45 Mag"
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {"Slower Reload Animation"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.ClipSizeOverride = 45

ATT.Category = "wz2_m4_mags"
ATT.ActivateElements = {"xmag"}

ARC9.LoadAttachment(ATT, "wz2_m4_xmag")



ATT = {}

ATT.Free = true

ATT.PrintName = "60 Round Mag"
ATT.CompactName = "60 Mag"
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {"Way Slower Reload Animation"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.ClipSizeOverride = 60

ATT.Category = "wz2_m4_mags"
ATT.ActivateElements = {"xmaglarge"}

ARC9.LoadAttachment(ATT, "wz2_m4_xmaglarge")

ATT = {}

ATT.Free = true

ATT.PrintName = "419 EXF Barrel"
ATT.CompactName = "419 EXF"
ATT.Icon = Material("")
ATT.Description = [[Barrel for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"419exf"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/att_r_mwii_hg_419mmexfbar.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_hg_419exf")

ATT = {}

ATT.Free = true

ATT.PrintName = "Support CT-90 Grip"
ATT.CompactName = "CT-90"
ATT.Icon = Material("")
ATT.Description = [[PistolGrip for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_pgrip"
ATT.ActivateElements = {"pgrip_none"}

ATT.Model = "models/weapons/r_mwii/ar/pgrip/att_r_mwii_grip_ct90.mdl"

ATT.ModelOffset = Vector(-7.52, -2.22, 6.5)



ARC9.LoadAttachment(ATT, "wz2_hg_pgrip_ct90")




ATT = {}

-- ATTS SHARED FOR ALL TT-H4 --

ATT.Free = true

ATT.SpeedMultSights = 1.05
ATT.SprintToFireTimeMult = 0.85
ATT.SpeedMult = 1.1

ATT.RecoilMult = 1.1
ATT.RangeMaxMult = 0.9 
ATT.SpreadMult = 1.05


ATT.PrintName = "TT-H4"
ATT.CompactName = "H4"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"tth4"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/att_r_mwii_hg_tth4.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_m4_tth4")


ATT = {}
--STATS SHARED FOR CARBINE SHROUD


ATT.Free = true

ATT.SpeedMultSights = 0.95
ATT.SprintToFireTimeAdd = 0.2
ATT.SpeedMult = 0.95

ATT.RecoilMult = 0.95
ATT.RangeMaxMult = 1.1 
ATT.SpreadMult = 0.95

ATT.PrintName = "14' Carbine Shroud"
ATT.CompactName = "14' SHROUD"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"carbineshroud"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/bps/att_r_mwii_bp_hg_carmine_14shroud.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_bp_shroud_cc")
local ATT = {}


ATT = {}

ATT.Free = true

ATT.SpeedMult = 0.90
ATT.AimDownSightsTimeMult = 1.15

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

ATT.SpeedMult = 0.80
ATT.AimDownSightsTimeMult = 1.35
ATT.SprintToFireTimeMult = 1.15

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
-- Stats Shared For all 419 EXF Barrel-- 
ATT.Free = true

ATT.RecoilMult = 0.8
ATT.SpreadMult = 0.75
ATT.MovementSpeedMult = 0.75
ATT.RangeMaxMult = 1.5

ATT.SpreadMultMove = 1.4 
ATT.SpreadMultMidAir = 1.4 
ATT.SpeedMultSights = 0.7
ATT.SpeedMult = 0.8

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

ATT.SwayMult = 0.85
ATT.RecoilMult = 0.95

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
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"carbineshroud"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/att_r_mwii_hg_14shroud.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_m4_shroud14")



ATT = {}

-- SHARED STATS FOR THE FIREBRAND 7.5

ATT.RecoilMult = 1.2
ATT.SpreadMult = 1.7
ATT.RecoilSideMult = 1.2
ATT.MovementSpeedMult = 1.2
ATT.DamageMin = 15
ATT.RangeMaxMult = 0.5

ATT.SpreadMultMove = 0.8 -- Applied when speed is equal to walking speed.
ATT.SpreadMultMidAir = 0.8 -- Applied when not touching the ground.
ATT.SpeedMultSights = 1.3
ATT.SpeedMult = 1.05

ATT.Free = true

ATT.PrintName = "7.5' TEMPUS FIREBRAND"
ATT.CompactName = "7.5'"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"tempusfirebrand"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/att_r_mwii_hg_firebrand.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_m4_tempusfirebrand")



ATT = {}

--SHARED ACROSS ALL P80

ATT.Free = true

ATT.AimDownSightsTimeMult = 0.85 
ATT.SprintToFireTimeMult = 0.90 
ATT.RecoilMult = 1.15
ATT.SpeedMultSights = 1.15
ATT.SpeedMultShooting = 1.15

ATT.PrintName = "TEMPUS P80 STRIKE"
ATT.CompactName = "P80"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_stocks"
ATT.ActivateElements = {"stocks_none"}

ATT.Model = "models/weapons/r_mwii/ar/sto/att_r_mwii_sto_p80.mdl"

ATT.ModelOffset = Vector(-5, -2.22, 2.5)


ARC9.LoadAttachment(ATT, "wz2_m4_p80")



--SHARED ACROSS ALL M16 STOCKS
ATT = {}

ATT.Free = true

ATT.AimDownSightsTimeMult = 1.1 
ATT.SprintToFireTimeMult = 1.2 
ATT.RecoilMult = 0.95
ATT.SpeedMultSights = 1.1
ATT.SpeedMultShooting = 1.1

ATT.PrintName = "DEMO Precision Factory" --m16 basically
ATT.CompactName = "PREC. FACTORY"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_stocks"
ATT.ActivateElements = {"stocks_none"}

ATT.Model = "models/weapons/r_mwii/ar/sto/att_r_mwii_sto_demoprecisionfactory.mdl"

ATT.ModelOffset = Vector(-5, -2.22, 2.5)


ARC9.LoadAttachment(ATT, "wz2_m4_m16")

-- SHARED ACROSS ALL RAVAGE 8s

ATT = {}

ATT.Free = true

ATT.AimDownSightsTimeMult = 0.9 
ATT.SprintToFireTimeMult = 0.8
ATT.RecoilMult = 1.10
ATT.SpeedMultSights = 1.05
ATT.SpeedMultShooting = 1.05

ATT.PrintName = "RAVAGE-8"
ATT.CompactName = "RAVAGE"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_stocks"
ATT.ActivateElements = {"stocks_none"}

ATT.Model = "models/weapons/r_mwii/ar/sto/att_r_mwii_stock_ravage8.mdl"

ATT.ModelOffset = Vector(-5, -2.22, 2.5)


ARC9.LoadAttachment(ATT, "wz2_m4_ravage8")



ATT = {}
-- Stats Shared For all 419 EXF Barrel-- 
ATT.Free = true



ATT.PrintName = "HIGHTOWER 20' BARREL"
ATT.CompactName = "20'"
ATT.Icon = Material("")
ATT.Description = [[Barrel for the M4.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_hgs"
ATT.ActivateElements = {"hightower"}

ATT.Model = "models/weapons/r_mwii/ar/hgs/att_r_mwii_hg_20.mdl"

ATT.ModelOffset = Vector(-18.15, -2.22, 2.82)


ATT.LHIK = true
ATT.LHIK_Priority = 0

ARC9.LoadAttachment(ATT, "wz2_hg_hightower20")


ATT = {}
-- Stats Shared For all 419 EXF Barrel-- 
ATT.Free = true

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.7),
        Ang = Angle(0, -0.5, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.PrintName = "Carry Handle"
ATT.CompactName = "HANDLE"
ATT.Description = [[Classic.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_m4_chandle"
ATT.ActivateElements = {"chandle"}



ARC9.LoadAttachment(ATT, "wz2_m4_chandle")


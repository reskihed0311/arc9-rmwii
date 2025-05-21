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

ATT.Category = "wz2_gpr91_mags"
ATT.ActivateElements = {"xmag"}

ARC9.LoadAttachment(ATT, "wz2_gpr91_xmag")
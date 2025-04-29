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

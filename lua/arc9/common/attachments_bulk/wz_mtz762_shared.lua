local ATT = {}

ATT = {}

ATT.Free = true

ATT.RPM = 630
ATT.DamageMin = 20.5
ATT.DamageMax = 40.5
ATT.RecoilMult = 0.90
ATT.SpreadMult = 1.095
ATT.SpeedMult = 1.1

ATT.PrintName = "JAK Heretic Carbine Kit"
ATT.CompactName = "JAK HERETIC"
ATT.Description = [[Converts the MTZ-762 into a MTZ-762 , with soviet rounds.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ClipSizeOverride = 40

ATT.Category = "wz2_mtz762_receivers"
ATT.ActivateElements = {"amp_soviet", "xmag_soviet"}

ARC9.LoadAttachment(ATT, "wz2_mtz762_amp_heretic")



ATT = {}

ATT.Free = true

ATT.SpeedMult = 0.88
ATT.AimDownSightsTimeMult = 1.20

ATT.PrintName = "40 Round Mag"
ATT.CompactName = "40 Mag"
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {"Slower Reload Animation"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"


ATT.ClipSizeOverride = 40

ATT.Category = "wz2_mtz762_mags"
ATT.ActivateElements = {"xmag"}

ARC9.LoadAttachment(ATT, "wz2_mtz762_xmag")

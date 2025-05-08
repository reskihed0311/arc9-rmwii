local ATT = {}


ATT = {}


ATT.Free = true

ATT.SpreadMultMove = 0.925
ATT.SpreadMultMidAir = 0.925 
ATT.SpreadMultHipFire =  0.925  

ATT.RecoilMult = 1.10
ATT.AimDownSightsTimeMult = 1.10

ATT.PrintName = "Agent Grip"
ATT.CompactName = "AGENT"
ATT.Icon = Material("")
ATT.Description = [[Angled Grip.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_sh_fgs"

ATT.Model = "models/weapons/r_mwii/att/fg/att_r_mwii_fg_agent.mdl"

ATT.ModelOffset = Vector(0, 0, 0)


ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_grip_agentgrip")


ATT = {}


ATT.Free = true

ATT.AimDownSightsTimeMult = 0.85
ATT.SpreadMultHipFire =  1.15


ATT.PrintName = "XTEN TX-12 Handstop"
ATT.CompactName = "TX12"
ATT.Icon = Material("")
ATT.Description = [[Handstop.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_sh_fgs"

ATT.Model = "models/weapons/r_mwii/att/fg/att_r_mwii_fg_xtentx12hs.mdl"

ATT.ModelOffset = Vector(0, 0, 0)



ARC9.LoadAttachment(ATT, "wz2_grip_tx12hs")



-- ATTS SHARED FOR ALL LOCKGRIP PRECISION-40 --

ATT = {}

ATT.Free = true

ATT.PrintName = "LOCKGRIP PRECISION-40"
ATT.CompactName = "PREC.40"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_sh_fgs"

ATT.Model = "models/weapons/r_mwii/att/fg/att_r_mwii_fg_precision40.mdl"

ATT.ModelOffset = Vector(0, 0, 0)


ATT.RecoilMult = 0.85
ATT.SpeedMult = 0.90
ATT.SpeedMultSights = 0.80
ATT.SpeedMultShooting = 0.85

ATT.SpreadMultMove = 0.95
ATT.SpreadMultMidAir = 1.5 
ATT.SpreadMultHipFire =  0.85  


ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_grip_lockgrip40")



ATT = {}


ATT.Free = true

ATT.PrintName = "HEX-40"
ATT.CompactName = "HEX-40"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone"

ATT.Category = "wz2_sh_fgs"

ATT.Model = "models/weapons/r_mwii/att/fg/att_r_mwii_fg_hex40.mdl"

ATT.ModelOffset = Vector(0, 0, 0)

-- ATTS SHARED FOR ALL HEX-40 --

ATT.RecoilMult = 0.75
ATT.SpeedMult = 0.80
ATT.SpeedMultSights = 0.70
ATT.SpeedMultShooting = 0.80

ATT.SpreadMultMove = 0.80
ATT.SpreadMultMidAir = 2 
ATT.SpreadMultHipFire =  0.80 

ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_grip_hex40")



ATT = {}


ATT.Free = true

ATT.PrintName = "EXF BACKDRAFT"
ATT.CompactName = "BACKDRAFT"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Category = "wz2_sh_fgs"

ATT.Model = "models/weapons/r_mwii/att/fg/att_r_mwii_fg_exfbackdraft.mdl"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.RecoilMult = 0.95
ATT.SpeedMultSights = 1.15
ATT.SpeedMultShooting = 0.90
ATT.SpreadMultHipFire =  0.85 
ATT.AimDownSightsTimeMult = 1.25
ATT.SpeedMult = 0.95

ATT.LHIK = true
ATT.LHIK_Priority = 1

ARC9.LoadAttachment(ATT, "wz2_grip_exfbackdraft")
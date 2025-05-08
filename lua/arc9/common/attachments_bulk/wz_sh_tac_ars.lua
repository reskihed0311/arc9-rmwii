local ATT = {}

ATT = {}


ATT.Free = true 

ATT.SpreadMultMove = 0.985
ATT.SpreadMultMidAir = 0.985
ATT.SpeedMultSights = 1.025
ATT.SpeedMult = 1.025

ATT.CustomCons =   
{  ["Reveals your position."] = ""}

ATT.PrintName = "SZ 1MW PEQ"
ATT.CompactName = "SZ 1MW PEQ"
ATT.Description = [[]]

ATT.Model = "models/weapons/r_mwii/att/tac/att_r_mwii_tac_sz1mwpeqbox.mdl"
ATT.Scale = 1
ATT.CantPeek = false

ATT.Category = {"wz2_sh_ar_tac"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.Laser = true
ATT.LaserStrength = 5
ATT.LaserFlareMat = nil
ATT.LaserTraceMat = nil
ATT.LaserColor = Color(255, 0, 0)
ATT.LaserAttachment = 1


ARC9.LoadAttachment(ATT, "wz_tac_ar_1mwpeqbox")
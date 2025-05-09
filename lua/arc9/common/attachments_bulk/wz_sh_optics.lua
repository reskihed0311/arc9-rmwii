    
local ATT = {}


ATT = {}


ATT.Free = true


ATT.PrintName = "3X RFL-OPTIC"
ATT.CompactName = "3RFL"
ATT.Description = [[An infrared 3-8x rifle optic of Russian origins.]]

ATT.Folder = "Thermals"
ATT.SpeedMultSights = 0.8
ATT.SprintToFireTimeAdd = 0.5
ATT.SpeedMult = 0.90

ATT.CustomPros = {
    ["Magnification"] = "3-8x",
    ["Thermal Capabilities"] = ""
}



ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_3rfl.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.82),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.RTScopeAdjustable = true -- adjustable scope settings
ATT.RTScopeAdjustmentLevels = 3
ATT.RTScopeFOVMin = 3
ATT.RTScopeFOVMax = 8


ATT.RTScope = true


ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRHighlightColor = Color(255, 255, 255)
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRNoPP = false
ATT.RTScopeFLIRBlend = 0.25
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0,
    ["$pp_colour_contrast"] = 4,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0,
    ["$pp_colour_contrast"] = 1,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}



ATT.RTScopeReticle = Material("vgui/rets/thermal_1.png", "mips smooth")
ATT.RTScopeReticleScale = 1.15
ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_3rfl")


ATT = {}


ATT.Free = true


ATT.PrintName = "6.0X Short-Zoom Optic"
ATT.CompactName = "SHORTZOOM"
ATT.Description = [[A russian LPVO.]]

ATT.Folder = "Magnified"
ATT.SpeedMultSights = 0.85
ATT.SprintToFireTimeAdd = 0.2
ATT.SpeedMult = 0.95

ATT.CustomPros = {
    ["Magnification"] = "3-6x",
}



ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_6xshortzoom.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.82),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.RTScopeAdjustable = true -- adjustable scope settings
ATT.RTScopeAdjustmentLevels = 2
ATT.RTScopeFOVMin = 3
ATT.RTScopeFOVMax = 6


ATT.RTScope = true




ATT.RTScopeReticle = Material("vgui/rets/ret_ru_basic.png", "mips smooth")
ATT.RTScopeReticleScale = 1.15
ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_6xshortzoom")



ATT = {}


ATT.Free = true


ATT.PrintName = "ZKR V4"
ATT.CompactName = "ZKR"
ATT.Description = [[A optic on a smol riser.]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_zkrv4riser.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 8, -1.55),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/opt_ru_basic.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_zkrv4")



ATT = {}


ATT.Free = true


ATT.PrintName = "SZ LoneWolf"
ATT.CompactName = "SZ LW "
ATT.Description = [[]]

ATT.Folder = "Holosight"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_szlonewolf.mdl"

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


ARC9.LoadAttachment(ATT, "wz_opt_szlonewolf")


ATT = {}


ATT.Free = true


ATT.PrintName = "SlimLine Pro"
ATT.CompactName = "SLIMLINE"
ATT.Description = [[]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_slimline.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.94),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/aimopv4.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_slimlinepro")


ATT = {}


ATT.Free = true


ATT.PrintName = "SlimLine Pro LP."
ATT.CompactName = "SLIMLINE LP."
ATT.Description = [[]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_slimline_lp.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.94),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/aimopv4.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics_lp"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_slimlinepro_lp")



ATT = {}


ATT.Free = true


ATT.PrintName = "SZ Recharge-DX"
ATT.CompactName = "SZ-DX"
ATT.Description = [[]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_szrechargedx.mdl"

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
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_szrechargedx")


ATT = {}


ATT.Free = true


ATT.PrintName = "AIM-OP V4"
ATT.CompactName = "OPV4"
ATT.Description = [[]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_aimopv4.mdl"

ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.5),
        Ang = Angle(0, -0, 0),
        Magnification = 1.15,
        ViewModelFOV = 60,
        KeepBaseIrons = false,
    }
}


ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/rets/aimopv4.png", "mips smooth")
ATT.HoloSightSize = 600

ATT.Category = {"wz2_sh_optics"}
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_aimopv4")


ATT = {}


ATT.Free = true


ATT.PrintName = "Cronen Mini Pro"
ATT.CompactName = "MiniPro"
ATT.Description = [[]]

ATT.Folder = "Red Dot"


ATT.Model = "models/weapons/r_mwii/att/opt/att_r_mwii_opt_minipro.mdl"

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
ATT.MenuCategory = "ARC9 - Warzone 2.0"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_opt_cronenminipro")
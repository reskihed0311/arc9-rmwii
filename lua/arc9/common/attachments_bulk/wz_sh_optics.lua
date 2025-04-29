
local ATT = {}


ATT = {}


ATT.Free = true


ATT.PrintName = "3X RFL-OPTIC"
ATT.CompactName = "3RFL"
ATT.Description = [[An infrared 3-8x rifle optic of Russian origins.]]

ATT.Folder = "Thermals"


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
ATT.RTScopeFOVMax = 6


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

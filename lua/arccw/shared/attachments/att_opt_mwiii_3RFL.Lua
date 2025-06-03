att.PrintName = "3RFL (3x)"
att.Description = "Cool Thermal Optic."


att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"


att.Model = "models/atts/opts/att_mwiii_3rfl.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.85),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        IgnoreExtra = true,
          Thermal = true,
    }
}


att.Holosight = true
att.HolosightReticle = Material("vgui/rets/ret_ru_basic.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/opts/att_mwiii_3rfl_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 3
att.HolosightBlackbox = false

att.HolosightConstDist = 64


att.Mult_SightTime = 1.55
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.90
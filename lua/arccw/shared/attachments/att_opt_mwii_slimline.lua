att.PrintName = "SlimLine"
att.Description = "Cool Optic."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"


att.Model = "models/atts/opts/att_mwii_slimline.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.95),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/reticles/smalldot.png", "smooth")
att.HolosightSize = 3.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/opts/att_mwii_slimline_hsp.mdl"

att.HolosightMagnification = 1

att.Mult_SightTime = 1.03

att.Colorable = true
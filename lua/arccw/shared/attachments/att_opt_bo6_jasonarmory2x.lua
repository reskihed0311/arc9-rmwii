att.PrintName = "Jason Armory (2X)"
att.Description = "Cool Optic."


att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"


att.Model = "models/atts/opts/att_bo6_jasonarmory2x.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.51),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}


att.Holosight = true
att.HolosightReticle = Material("vgui/reticles/elcanlike.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 8
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/opts/att_bo6_jasonarmory2x_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 2
att.HolosightBlackbox = false

att.HolosightConstDist = 64

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.95
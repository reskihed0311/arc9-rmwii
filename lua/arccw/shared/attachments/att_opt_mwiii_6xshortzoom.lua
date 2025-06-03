att.PrintName = "ShortZoom (3-6x)"
att.Description = "Cool Optic."


att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"


att.Model = "models/atts/opts/att_mwiii_6xshortzoom.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.85),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}


att.Holosight = true
att.HolosightReticle = Material("vgui/rets/ret_ru_basic.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/opts/att_mwiii_6xshortzoom_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 3
att.HolosightBlackbox = false

att.HolosightConstDist = 64

att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 6

att.Mult_SightTime = 1.35
att.Mult_SightedSpeedMult = 0.8
att.Mult_SpeedMult = 0.95
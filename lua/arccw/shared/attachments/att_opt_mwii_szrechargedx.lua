att.PrintName = "SZ Recharge-DX"
att.Description = "Cool Optic."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"


att.Model = "models/atts/opts/att_mwii_szrechargedx.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.35),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
    }
}

att.Holosight = true
att.HolosightReticle = Material("vgui/reticles/holo.png")
att.HolosightSize = 1.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/atts/opts/att_mwii_szrechargedx_hsp.mdl"

att.HolosightMagnification = 1

att.Mult_SightTime = 1.03

att.Colorable = true
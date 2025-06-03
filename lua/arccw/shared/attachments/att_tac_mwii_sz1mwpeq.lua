att.PrintName = "SZ 1MW PEQBOX"
att.Description = "Cool Laser."
att.Desc_Neutrals = {}
att.AutoStats = true

att.Desc_Neutrals = {"(With an optic) Press E two times to point shoot."}

att.Slot = {"tac"}

att.Model = "models/atts/tacs/att_mwii_tac_sz1mwpeqbox.mdl"
att.ModelOffset = Vector(0, 0, 0)
att.OffsetAng = Angle(0, 0,180)


att.AdditionalSights = {
    {
        Pos = Vector(-0.1, 25, -3.5),
        Ang = Angle(0, 0, 60),
        Magnification = 1,
        CrosshairInSights = true,
    }
}

att.Laser = true
att.LaserStrength = 3.5 / 5
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 0, 0, 150)}

att.Mult_SightTime = 0.90
att.Mult_SightedSpeedMult = 0.9
att.Mult_HipDispersion = 0.8



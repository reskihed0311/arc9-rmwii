local ATT = {}

ATT = {}

ATT.Free = true

ATT.PrintName = "Jack of All Frame"
ATT.CompactName = "JACK."
ATT.Description = [[Jack of All Blueprint for the P890.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 - Blueprints"



ATT.Category = "wz2_p890_frames"
ATT.ActivateElements = {"jackofall_frame"}

ARC9.LoadAttachment(ATT, "wz2_p890_jackofallrec")


ATT = {}

ATT.Free = true

ATT.PrintName = "RSH-80 Jack"
ATT.CompactName = "JACK. RSH-80"
ATT.Description = [[Jack of All Blueprint for the P890.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 - Blueprints"

ATT.Folder = "Blueprints"

ATT.Category = "wz2_p890_grip"
ATT.ActivateElements = {"jackofall_rsh80"}

ARC9.LoadAttachment(ATT, "wz2_p890_griprsh_jack")



ATT = {}

ATT.Free = true

ATT.PrintName = "Jack of All - 10 Round Magazine"
ATT.CompactName = "10 Mag JACK."
ATT.Description = [[Extra Boulets.]]
ATT.Pros = {}
ATT.Cons = {"Slower Reload Animation"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 - Blueprints"
ATT.Folder = "Blueprints"

ATT.ClipSizeOverride = 10

ATT.Category = "wz2_p890_mags"
ATT.ActivateElements = {"xmag_jack"}

ARC9.LoadAttachment(ATT, "wz2_p890_xmag_jack")




ATT = {}

ATT.Free = true

ATT.PrintName = "Jack of All Hammer"
ATT.CompactName = "JACK. HAM."
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 - Blueprints"
ATT.Folder = "Blueprints"


ATT.Category = "wz2_p890_hammer"
ATT.ActivateElements = {"jackofall_hammer"}

ARC9.LoadAttachment(ATT, "wz2_p890_jackofallhammer")


ATT = {}

ATT.Free = true

ATT.PrintName = "CottonMouth Jack of All"
ATT.CompactName = "JACK. COTTON."
ATT.Description = [[]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Warzone 2.0 - Blueprints"
ATT.Folder = "Blueprints"


ATT.Category = "wz2_p890_bar"
ATT.ActivateElements = {"cottonmouth_jackofall"}

ARC9.LoadAttachment(ATT, "wz2_p890_jackofallcottonmouth")


ATT = {}


ATT.Free = true


ATT.PrintName = "SlimLine Pro (JACK)"
ATT.CompactName = "JACK. SLIMLINE"
ATT.Description = [[]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_slimlinepro_jackofall.mdl"

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
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_bp_slimlinepro_jackofall")


ATT = {}


ATT.Free = true


ATT.PrintName = "SlimLine Pro LP. (JACK)"
ATT.CompactName = "JACK. SLIMLINE LP."
ATT.Description = [[]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_slimlinepro_lp_jackofall.mdl"

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
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_bp_slimlinepro_jackofall")


ATT = {}


ATT.Free = true


ATT.PrintName = "SlimLine Pro (JACK)"
ATT.CompactName = "JACK. SLIMLINE"
ATT.Description = [[]]

ATT.Folder = "Red Dot Blueprints"


ATT.Model = "models/weapons/r_mwii/att/opt/bp/att_r_mwii_bp_opt_slimlinepro_jackofall.mdl"

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
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.ModelOffset = Vector(0, 0, 0)


ARC9.LoadAttachment(ATT, "wz_bp_slimlinepro_jackofall_hp")


ATT = {}


ATT.Free = true 

ATT.PrintName = "SERIES 710 Laser JACK."
ATT.CompactName = "710 JACK."
ATT.Description = [[]]
ATT.Folder = "Blueprints"

ATT.Model = "models/weapons/r_mwii/att/tac/att_r_mwii_bp_tac_series710_jackofall.mdl"
ATT.Scale = 1
ATT.CantPeek = false

ATT.Category = {"wz2_sh_pi_tac"}
ATT.MenuCategory = "ARC9 - Warzone 2.0 Blueprints"

ATT.Laser = true
ATT.LaserStrength = 1
ATT.LaserFlareMat = nil
ATT.LaserTraceMat = nil
ATT.LaserColor = Color(255, 0, 0)
ATT.LaserAttachment = 1


ARC9.LoadAttachment(ATT, "wz_bp_series710_jackofall")







/datum/chemical_reaction/active_sporres
    name = "Stable Blob Spores"
    id = "active_spores"
    results = list("active_spores" = 1) 
    required_reagents = list("sacid" = 1, "oxygen" = 1, "inactive_spores" = 1)
    required_catalysts = list("teslium" = 5)

/datum/chemical_reaction/regenerative_spores
    name = "Regenerative Blob Spores"
    id = "regenerative_spores"
    results = list("regenerative_spores" = 1)
    required_reagents = list("active_spores" = 1,"styptic_powder" = 1)
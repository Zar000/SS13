
/datum/techweb_node/base/New()
    . = ..()
    design_ids += list("plastic_beaker","protolathe_engineering", "protolathe_service","protolathe_medical","protolathe_cargo","protolathe_science","protolathe_security")

/datum/techweb_node/bluespace_holding/New()
    . = ..()
    design_ids += "bluespacespraybottle"

/datum/techweb_node/comptech/New()
    . = ..()
    design_ids += "stockexchange"
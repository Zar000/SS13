// This is to hold the funny proc that is called on round end added by templatestation
// For where its called, see the actual ticker.dm file (code/controllers/subsystem/ticker.dm)

/datum/controller/subsystem/ticker/proc/HandleTemplateStationRoundEnd()
    for(var/mob/living/carbon/human/H in GLOB.carbon_list) // check all mobs
        if(H.ckey == "snowerystorm") // Are we shoots? for now hardcoded ckey, will perhaps add this as a type of funni punishment later.
            H.gib() // Yes, gib
    for(var/obj/machinery/door/airlock/airlock in GLOB.roundend_open_airlocks)
        if(airlock)
            airlock.prison_open()
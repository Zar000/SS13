// This is to hold the funny proc that is called on round end added by toolbeltstation
// For where its called, see the actual ticker.dm file (code/controllers/subsystem/ticker.dm)

/datum/controller/subsystem/ticker/proc/HandletoolbeltstationRoundEnd()
    for(var/mob/living/carbon/human/H in GLOB.carbon_list) // check all mobs
        if(H.ckey in list("snowerystorm", "Zar0")) // Are we shoots? for now hardcoded ckey, will perhaps add this as a type of funni punishment later.
            H.gib() // Yes, gib

    for(var/obj/machinery/door/door in GLOB.roundend_open_doors)
        if(door)
            if(istype(door, /obj/machinery/door/airlock))
                var/obj/machinery/door/airlock/A = door
                A.prison_open()
            else
                door.open()
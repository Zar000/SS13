// Makes doors open by themselves on round end.
// This works for all doors, airlocks, blastdoors and shutters alike.
// Probably super hacky, but who cares right?
/obj/effect/mapping_helpers/door
	name = "generic door map helper"
	icon = 'toolbeltstation/icons/effects/mapping_helpers.dmi'
	icon_state = ""

/obj/effect/mapping_helpers/door/openroundend
	name = "door openroundend helper"
	icon_state = "airlock_openroundend_helper"

/obj/effect/mapping_helpers/door/openroundend/Initialize(mapload)
	. = ..()
	if(!mapload)
		log_world("### MAP WARNING, [src] spawned outside of mapload!")
		return
	var/obj/machinery/door/door = locate(/obj/machinery/door) in loc
	if(door)
		if(door in GLOB.roundend_open_doors)
			log_world("### MAP WARNING, [src] at [AREACOORD(src)] tried to add [door] to [GLOB.roundend_open_doors], but it's already there!")
		else
			GLOB.roundend_open_doors += door
	else
		log_world("### MAP WARNING, [src] failed to find a door at [AREACOORD(src)]")
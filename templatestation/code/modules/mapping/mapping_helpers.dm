/obj/effect/mapping_helpers/airlock/openroundend
	name = "airlock openroundend helper"
	icon = 'templatestation/icons/effects/mapping_helpers.dmi'
	icon_state = "airlock_cyclelink_helper"

/obj/effect/mapping_helpers/airlock/openroundend/Initialize(mapload)
	. = ..()
	if(!mapload)
		log_world("### MAP WARNING, [src] spawned outside of mapload!")
		return
	var/obj/machinery/door/airlock/airlock = locate(/obj/machinery/door/airlock) in loc
	if(airlock)
		if(airlock in GLOB.roundend_open_airlocks)
			log_world("### MAP WARNING, [src] at [AREACOORD(src)] tried to add [airlock] to [GLOB.roundend_open_airlocks], but it's already there!")
		else
			GLOB.roundend_open_airlocks += airlock
	else
		log_world("### MAP WARNING, [src] failed to find an airlock at [AREACOORD(src)]")

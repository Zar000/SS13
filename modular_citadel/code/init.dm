//init file stolen from hippie

/proc/cit_initialize()
	load_mentors()
	initialize_global_loadout_items()

	//body parts and things
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_head, GLOB.xeno_head_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_tail, GLOB.xeno_tail_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_dorsal, GLOB.xeno_dorsal_list)
/* toolbeltstation CHANGE; IPCS MAY BE READDED BUT ITS UNUSED FOR NOW
	init_sprite_accessory_subtypes(/datum/sprite_accessory/screen, GLOB.ipc_screens_list, roundstart = TRUE)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/antenna, GLOB.ipc_antennas_list, roundstart = TRUE)
*/
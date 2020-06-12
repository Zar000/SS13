//The base hooks themselves

//New() hooks
/hook/client_new

/hook/mob_new

/hook/living_new

/hook/carbon_new

/hook/human_new

/hook/simple_animal_new

//Hooks for interactions
/hook/living_attackby

//
//Hook helpers to expand hooks to others
//
/hook/mob_new/proc/chain_hooks(mob/M)
	var/result = 1

	return result
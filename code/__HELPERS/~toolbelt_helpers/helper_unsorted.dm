// File for unsorted helper procs that I just couldn't     //
// find a place for in any other folder, so here they stay //
/////////////////////////////////////////////////////////////

//getimplant: Returns implant of typepath if found in mob.
/mob/proc/getimplant(typepath)
    return

/mob/living/carbon/getimplant(typepath) 
	return (locate(typepath) in implants)
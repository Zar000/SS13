/mob/living/carbon/human/movement_delay()
	. = 0
	if(wrongdirmovedelay)
		. += 1
	. += ..()

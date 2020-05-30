/mob/living/carbon/human/Move(NewLoc, direct)
	var/oldpseudoheight = pseudo_z_axis
	. = ..()
	if(. && sprinting && !(movement_type & FLYING) && canmove && !resting && m_intent == MOVE_INTENT_RUN && has_gravity(loc) && !pulledby)
		if((oldpseudoheight - pseudo_z_axis) >= 8)
			to_chat(src, "<span class='warning'>You trip off of the elevated surface!</span>")
			for(var/obj/item/I in held_items)
				accident(I)
			Knockdown(80)

/mob/living/carbon/human/movement_delay()
	. = 0
	if(wrongdirmovedelay)
		. += 1
	. += ..()

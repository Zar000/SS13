/datum/saymode/hiveimplant
	key = MODE_KEY_HIVEIMPLANT
	mode = MODE_HIVEIMPLANT

/datum/saymode/hiveimplant/handle_message(mob/living/user, message, datum/language/language)
	if(user.getimplant(/obj/item/implant/hivemind))
		user.hiveimplant_talk(message)
	return FALSE
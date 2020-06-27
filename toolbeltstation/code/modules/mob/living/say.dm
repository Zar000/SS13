/mob/living/proc/hiveimplant_talk(message, shown_name = real_name)
	src.log_talk(message, LOG_SAY)
	message = trim(message)
	if(!message)
		return

	var/message_a = say_quote(message)
	var/rendered = "<i><span class='alien'>H1V3M1ND <span class='name'>[shown_name]</span> <span class='message'>[message_a]</span></span></i>"
	for(var/mob/S in GLOB.player_list)
		if(!S.stat && S.getimplant(/obj/item/implant/hivemind))
			to_chat(S, rendered)
		if(S in GLOB.dead_mob_list)
			var/link = FOLLOW_LINK(S, src)
			to_chat(S, "[link] [rendered]")
/*
/mob/living/carbon/alien/humanoid/royal/queen/alien_talk(message, shown_name = name)
	shown_name = "<FONT size = 3>[shown_name]</FONT>"
	..(message, shown_name)

*/
/obj/screen/mov_intent
	icon = 'modular_citadel/icons/ui/screen_midnight.dmi'

/obj/screen/sprintbutton
	name = "toggle sprint"
	icon = 'modular_citadel/icons/ui/screen_midnight.dmi'
	icon_state = "act_sprint"
	layer = ABOVE_HUD_LAYER - 0.1

/obj/screen/sprintbutton/Click()
	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		H.togglesprint()

/obj/screen/sprintbutton/proc/insert_witty_toggle_joke_here(mob/living/carbon/human/H)
	if(!H)
		return
	if(H.sprinting)
		icon_state = "act_sprint_on"
	else
		icon_state = "act_sprint"
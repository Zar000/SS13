// Clown's Sprayer, honk honk
/obj/item/reagent_containers/spray/clown
	name = "Floor-Be-Lubed" // better name soon(tm)
	desc = "The ultimate in rapid lubrication technology!"
	icon = 'toolbeltstation/icons/obj/janitor.dmi'
	icon_state = "clown"
	item_state = "clown"
	volume = 100
	list_reagents = list("lube" = 50)
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100)

/obj/item/reagent_containers/spray/clown/selfcharge
	name = "Floor-Be-Lubed DELUXE"
	desc = "The ultimate in rapid lubrication technology, now with an ENDERLY-Pattern internal microreactor to synthesize lube for you!"
	reagent_flags = AMOUNT_VISIBLE
	volume = 120
	amount_per_transfer_from_this = 10
	stream_amount = 20
	list_reagents = list("lube" = 200)
	possible_transfer_amounts = list(5,10,15,20,25,30,60,120)
	var/last_generate = 0
	var/generate_delay = 10 // deciseconds
	var/generate_amount = 5
	var/generate_type = "lube"

/obj/item/reagent_containers/spray/clown/selfcharge/examine(mob/user)
	. = ..()
	to_chat(user, "<span class='notice'>It synthesizes [generate_amount] unit\s of [generate_type] every [generate_delay/10] second\s.</span>")

/obj/item/reagent_containers/spray/clown/selfcharge/Initialize()
	..()
	START_PROCESSING(SSfastprocess, src)

/obj/item/reagent_containers/spray/clown/selfcharge/Destroy()
	STOP_PROCESSING(SSfastprocess, src)
	return ..()

/obj/item/reagent_containers/spray/clown/selfcharge/process()
	if(world.time < last_generate + generate_delay)
		return
	last_generate = world.time
	generate_reagents()

/obj/item/reagent_containers/spray/clown/selfcharge/proc/generate_reagents()
	reagents.add_reagent(generate_type, generate_amount)

// bluespace spray bottle
/obj/item/reagent_containers/spray/bluespace
	name = "bluespace spray bottle"
	desc = "A spray bottle utilizing bluespace foam in order to hold more reagents."
	icon = 'toolbeltstation/icons/obj/janitor.dmi'
	icon_state = "bluespace"
	item_state = "bluespace"
	lefthand_file = 'toolbeltstation/icons/mob/inhands/equipment/custodial_lefthand.dmi'
	righthand_file = 'toolbeltstation/icons/mob/inhands/equipment/custodial_righthand.dmi'
	volume = 300
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100,150,300)
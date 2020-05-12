// Clown's Sprayer, honk honk
/obj/item/reagent_containers/spray/clown
	name = "Floor-Be-Lubed" // better name soon(tm)
	desc = "The ultimate in rapid lubrication technology!"
	icon = 'icons/obj/janitor.dmi'
	icon_state = "clown"
	item_state = "clown"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	volume = 200
	list_reagents = list("lube" = 60)
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100,200)

/obj/item/reagent_containers/spray/clown/selfcharge
	name = "Floor-Be-Lubed DELUXE"
	desc = "The ultimate in rapid lubrication technology, now with a microreactor to synthesize lube for you!"
	var/chargetick = 0
	var/chargeticks = 5

/obj/item/reagent_containers/spray/clown/selfcharge/Initialize()	//wrapper so it can be vv'd easier
	..()
	START_PROCESSING(SSobj, src)

/obj/item/reagent_containers/spray/clown/selfcharge/process()
	chargetick++
	if(chargetick >= chargeticks)
		src.reagents.add_reagent("lube", 20)


/obj/item/reagent_containers/spray/clown/selfcharge/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

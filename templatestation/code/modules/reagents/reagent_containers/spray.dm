// Clown's Sprayer, honk honk
/obj/item/reagent_containers/spray/clown
	name = "Floor-Be-Lubed" // better name soon(tm)
	desc = "The ultimate in rapid lubrication technology!"
	icon = 'templatestation/icons/obj/janitor.dmi'
	icon_state = "clown"
	item_state = "clown"
	volume = 200
	list_reagents = list("lube" = 50)
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100,200)

/obj/item/reagent_containers/spray/clown/selfcharge
	name = "Floor-Be-Lubed DELUXE"
	desc = "The ultimate in rapid lubrication technology, now with an ENDERLY-Pattern internal microreactor to synthesize lube for you!"
	list_reagents = list("lube" = 200)
	var/chargetick = 0
	var/chargeticks = 1
	var/rechargeamount = 5

/obj/item/reagent_containers/spray/clown/selfcharge/examine(mob/user)
	. = ..()
	if(rechargeamount && chargeticks)
		to_chat(user, "It synthesizes [rechargeamount] unit\s every [chargeticks] second\s.")

/obj/item/reagent_containers/spray/clown/selfcharge/Initialize()	//wrapper so it can be vv'd easier
	..()
	START_PROCESSING(SSobj, src)

/obj/item/reagent_containers/spray/clown/selfcharge/process()
	chargetick++
	if(chargetick >= chargeticks) // so admins can varedit how often they want it to recharge
		src.reagents.add_reagent("lube", rechargeamount)
		chargetick = 0


/obj/item/reagent_containers/spray/clown/selfcharge/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

// bluespace spray bottle
/obj/item/reagent_containers/spray/bluespace
	name = "bluespace spray bottle"
	desc = "A spray bottle utilizing bluespace technology in order to hold more reagents."
	icon = 'templatestation/icons/obj/janitor.dmi'
	icon_state = "bluespace"
	item_state = "bluespace"
	lefthand_file = 'templatestation/icons/mob/inhands/equipment/custodial_lefthand.dmi'
	righthand_file = 'templatestation/icons/mob/inhands/equipment/custodial_righthand.dmi'
	volume = 300
	possible_transfer_amounts = list(5,10,15,20,25,30,50,100,150,300)
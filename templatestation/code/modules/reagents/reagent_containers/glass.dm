// Small plastic beaker, added only due to the fact normal beakers cant withstand
// the pH in cleaner grenades. Fucking fermichem.

/obj/item/reagent_containers/glass/beaker/plastic/small
	name = "plastic beaker"
	desc = "A small plastic beaker. Can hold up to 50 units."
	icon_state = "beakerwhitesmall"
	materials = list(MAT_GLASS=500, MAT_PLASTIC=1000)
	volume = 50
	possible_transfer_amounts = list(5,10,15,20,25,30,50)
	fillstate = "beaker"
/*
/obj/item/reagent_containers/glass/beaker/plastic/small/update_icon()
	icon_state = "beaker" // hack to lets us reuse the beaker reagent fill states
	..()
	icon_state = "beakerwhitesmall"
*/
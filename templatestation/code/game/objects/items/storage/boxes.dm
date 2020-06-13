/obj/item/storage/box/beakers/plastic
	name = "box of plastic beakers"
	illustration = "beaker"

/obj/item/storage/box/beakers/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/glass/beaker/plastic/small(src)
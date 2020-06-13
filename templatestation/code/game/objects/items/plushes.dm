   /////////////////////////////////////////
  //            FUNNY PLUSHES            //
 /////////////////////////////////////////
/obj/item/toy/plush/cloffplushie
	name = "moth plushie"
	desc = "A plushie depicting a moth with red wings. Quite ugly."
	icon = 'icons/obj/plushes.dmi'
	icon_state = "cloffmuncher"
	item_state = "cloffmuncher"
	attack_verb = list("fuwaa'd", "chkchkchk'd", "AAAAAAAAA'd")

/obj/item/toy/plush/huuskplushie
	name = "duck plushie"
	desc = "A huge plushie of a duck. Quack!"
	icon = 'icons/obj/plushes.dmi'
	icon_state = "huusk"
	item_state = "huusk"
	attack_verb = list("quacked", "flapped")
	squeak_override = list('templatestation/sound/creatures/duck.ogg' = 1)

/obj/item/toy/plush/olafplushie
	name = "head of security plushie"
	desc = "A plushie depicting a Head of Security, menacingly holding a toy stunbaton."
	icon = 'icons/obj/plushes.dmi'
	icon_state = "olaf"
	item_state = "olaf"
	squeak_override = list('sound/weapons/egloves.ogg' = 1)
	attack_verb = list("flashed", "harmbatoned", "lethaled")

/obj/item/toy/plush/zekeplushie
	name = "assistant plushie"
	desc = "A plushie of a greytider with a huge afro."
	icon = 'icons/obj/plushes.dmi'
	icon_state = "zeke"
	item_state = "zeke"
	attack_verb = list("toolboxed", "ooga'd", "booga'd", "griffed")
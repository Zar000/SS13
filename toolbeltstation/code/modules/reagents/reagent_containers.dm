#define DISPLAY_RATINGS (1<<2)

// This is so that we can see what beakers can handle
// pH and temperature (or, in fact, can't handle it)
// becouse some citcoder decided it should just be
// written in the description, and we know no one will
// actually do that. God fucking damnit, citcoders.

//
// If any container has something in the desc saying
// that it cannot handle pH / temperature please
// make an issue for it on github
//
/obj/item/reagent_containers/examine(mob/user)
    ..()
    if (beaker_weakness_bitflag & DISPLAY_RATINGS)
        if(beaker_weakness_bitflag & PH_WEAK)
            to_chat(user, "<span class='notice'>It isn't rated to withstand extreme pH levels.</span>")

        if(beaker_weakness_bitflag & TEMP_WEAK)
            to_chat(user, "<span class='notice'>It looks like it would melt at very high temperatures.</span>")

/obj/item/reagent_containers/glass/Initialize()
    ..()
    beaker_weakness_bitflag |= DISPLAY_RATINGS
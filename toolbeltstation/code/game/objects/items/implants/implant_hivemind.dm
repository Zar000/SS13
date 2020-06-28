/obj/item/implant/hivemind
    name = "Hivemind Implant"
    desc = "f1 --> \" I think the clowns are metacomming \""
    activated = FALSE

/obj/item/implant/hivemind/implant(mob/living/target, mob/user, silent = FALSE)
    if(..())
        if(target.stat != DEAD && !silent)
            to_chat(target, "<span class='notice'>Your mind is invaded by a foreign presence! You are now part of the hivemind. Use 'v' to communicate using it.</span>")
            return TRUE
    return FALSE

/obj/item/implant/hivemind/removed(mob/target, silent = FALSE, special = 0)
    if(..())
        if(target.stat != DEAD && !silent)
            to_chat(target, "<span class='boldnotice'>Your connection to the hivemind fades.</span>")
        return TRUE
    return FALSE

/obj/item/implanter/hivemind
    name = "implanter (hivemind)"
    imp_type = /obj/item/implant/hivemind

/obj/item/implantcase/hivemind
    name = "implant case - 'Hivemind'"
    desc = "A glass case containing a hivemind implant."
    imp_type = /obj/item/implant/hivemind
/obj/item/implant/revival
    name = "revival implant"
    desc = "Why is the clown immortal?"
    activated = FALSE
    uses = 1

/obj/item/implant/revival/get_data()
    var/dat = {"<b>Implant Specifications:</b><BR>
                <b>Name:</b> Enderly Inc. Pattern 9 R-class Revival Implant<BR>
                <b>Life:</b> Activates upon death.<BR>
                <b>Important Notes:</b> Does not activate if user's body was fully destroyed.<BR>
                <HR>
                <b>Implant Details:</b><BR>
                <b>Function:</b> Contains an artificial legion core which activates upon death.<BR>
                <b>Special Features:</b> Fully revitalizes user upon activation.<BR>
                "}
    return dat

/obj/item/implant/revival/on_mob_death(mob/living/L, gibbed)
    if (gibbed)
        activate("gibbed")
    else
        activate()

/obj/item/implant/revival/activate(cause)
    . = ..()
    if (cause == "gibbed")
        qdel(src)
        return
    uses--
    to_chat(imp_in, "<span class='notice'>You feel revitalized as your [name] activates.</span>")
    imp_in.revive(1,1)
    if(!uses)
        qdel(src)

/obj/item/implant/revival/infinite
    name = "advanced revival implant"
    desc = "Holy shit, the clown is really immortal."
    uses = -1

/obj/item/implanter/revival
    name = "implanter (revival)"
    imp_type = /obj/item/implant/revival

/obj/item/implantcase/revival
    name = "implant case - 'Revival'"
    desc = "A glass case containing a revival implant."
    imp_type = /obj/item/implant/revival

/obj/item/implanter/revival/infinite
    name = "implanter (advanced revival)"
    imp_type = /obj/item/implant/revival/infinite

/obj/item/implantcase/revival/infinite
    name = "implant case - 'Advanced Revival'"
    desc = "A glass case containing an advanced revival implant."
    imp_type = /obj/item/implant/revival/infinite

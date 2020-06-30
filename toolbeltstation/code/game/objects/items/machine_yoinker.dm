  /////////////////////////
 // MACHINE PICKUP TOOL //
/////////////////////////
// Basically lets you pick up a machine and store it inside of the tool
// to-do:
// - Make it able to pick up a deepfryer properly
// - Make it constructable
// - Maybe nerf it??
//
/obj/item/machine_yoink
    name = "dreadfully overused nabbing gadget"
    desc = "The D.O.N.G developed by Enderly Inc. is able to pick up and store a single machine for ease of transport. Warranty void if opened."
    icon = 'toolbeltstation/icons/obj/objects.dmi'
    icon_state = "machineyoink"
    w_class = WEIGHT_CLASS_BULKY
    var/obj/machinery/machinecontained
    var/norestrictions

/obj/item/machine_yoink/admin
    name = "administrative machine yoinker"
    desc = "Its restrictions seem to have been bypassed."
    norestrictions = TRUE

/obj/item/machine_yoink/examine(mob/user)
    ..()
    if(machinecontained)
        to_chat(user, "<span class='notice'>It contains \the [machinecontained].")

/obj/item/machine_yoink/Initialize()
	. = ..()
	update_icon()

/obj/item/machine_yoink/update_icon()
    cut_overlays()
    var/mutable_appearance/overlay = mutable_appearance('toolbeltstation/icons/obj/objects.dmi', "[icon_state]1")
    if (machinecontained)
        overlay.icon_state = "[icon_state]0"
    add_overlay(overlay)

/obj/item/machine_yoink/proc/machinepickup(obj/machinery/machine, mob/user) // Picks up a machine.
    to_chat(user, "<span class='notice'>You pick up \the [machine] with your [src].</span>")
    machine.loc = src
    machinecontained = machine
    update_icon()
    return

/obj/item/machine_yoink/proc/machinedrop(mob/user) // Drops machine currently held in the yoinker.
    if (!machinecontained)
        to_chat(user, "<span class='warning'>\The [src] is empty!</span>")
        return
    var/droplocation = get_turf(src)
    if (!droplocation)
        return
    to_chat(user, "<span class='notice'>You drop \the [machinecontained]</span>")
    machinecontained.loc = droplocation
    machinecontained = null
    update_icon()
    return

/obj/item/machine_yoink/attack_self(mob/user)
    machinedrop(user)


/obj/machinery/attacked_by(obj/item/W, mob/user, params) // should this be in machinery? shrug.
    if (istype(W, /obj/item/machine_yoink))
        var/obj/item/machine_yoink/yoinker = W
        if (!yoinker || (!src.circuit && !yoinker.norestrictions))
            return
        if (yoinker.machinecontained)
            to_chat(user, "<span class='warning'>\The [yoinker] already contains a machine!</span>")
            return
        if (istype(src, /obj/machinery/computer) && !yoinker.norestrictions)
            to_chat(user, "<span class='warning'>This machine is incompatible!</span>")
            return
        if(!isturf(user.loc))
            return
        to_chat(user, "<span class='notice'>You attempt to pick up \the [src] with your [yoinker].</span>")
        if(do_after(user, 10, target = src))
            yoinker.machinepickup(src, user)
    else
        ..()
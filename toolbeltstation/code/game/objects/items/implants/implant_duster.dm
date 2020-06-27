/obj/item/implant/dust
    name = "disintegration implant"
    desc = "Disintegrates the user upon death."
    icon = 'icons/effects/blood.dmi'
    icon_state = "remains"
    var/popup = FALSE

/obj/item/implant/dust/get_data()
    var/dat = {"<b>Implant Specifications:</b><BR>
                <b>Name:</b> Robust Corp RD-52 Employee Management Implant<BR>
                <b>Life:</b> Activates upon death.<BR>
                <b>Important Notes:</b> Disintegrates user<BR>
                <HR>
                <b>Implant Details:</b><BR>
                <b>Function:</b> Contains a compact, electrically activated mechanism that activates upon receiving a specially encoded signal or upon host death, disintegrating the host.<BR>
                <b>Special Features:</b> Disintegrates user<BR>
                "}
    return dat

/obj/item/implant/dust/on_mob_death(mob/living/L, gibbed)
    activate("death")

/obj/item/implant/dust/activate(cause)
    . = ..()
    if(!cause || !imp_in)
        return 0
    if(cause == "action_button" && !popup)
        popup = TRUE
        var/response = alert(imp_in, "Are you sure you want to activate your [name]? This will cause you to disintegrate!", "[name] Confirmation", "Yes", "No")
        popup = FALSE
        if(response == "No")
            return 0
    to_chat(imp_in, "<span class='notice'>You activate your [name].</span>")
    if(imp_in)
        imp_in.dust(1)
    qdel(src)

/obj/item/implanter/dust
    name = "implanter (disintegration)"
    imp_type = /obj/item/implant/dust

/obj/item/implantcase/dust
    name = "implant case - 'Disintegration'"
    desc = "A glass case containing a disintegration implant."
    imp_type = /obj/item/implant/dust
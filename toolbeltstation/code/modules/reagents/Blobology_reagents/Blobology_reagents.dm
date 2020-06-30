/datum/reagent/toxin/inactive_spores
    name = "Old Spores"
    id = "inactive_spores"
    description = "Inactive blob spores, probably could be reactivated with an electric current"
    color = "#336600"
    toxpwr = 1

/datum/reagent/toxin/active_spores
    name = "Stable Blob Spores"
    id = "active_spores"
    description = "Active blob spores, could prove useful with experimentation"
    color = "82b8aa"
    toxpwr = 2

/datum/reagent/toxin/wild_spores
    name = "Wild Blob Spores"
    id = "wild_spores"
    description = "Must be stabilized to prove of any use"
    color = "#336600"
    toxpwr = 3

/datum/reagent/medicine/regenerative_spores
    name = "Regenerative Blob Spores"
    id = "regenerative_spores"
    description = "Blob Spores modified to serve a medical purpose"
    color = "#FF9696"
    metabolization_rate = 5 * REAGENTS_METABOLISM
    overdose_threshold = 40

/datum/reagent/medicine/regenerative_spores/reaction_mob(mob/living/M, method=TOUCH, reac_volume,show_message = 1)
	if(iscarbon(M))
		if (M.stat == DEAD)
			show_message = 0
		if(method in list(VAPOR))
			var/mob/living/carbon/C = M
			C.losebreath++
			C.emote("cough")
			to_chat(M, "<span class='danger'>You feel your throat closing up!</span>")
		else if(method == INJECT)
			return
		else if(method in list(PATCH, TOUCH, INGEST))
			M.adjustBruteLoss(-1.5 * reac_volume)
			M.adjustFireLoss(-1.5 * reac_volume)
			if(show_message)
				to_chat(M, "<span class='danger'>You feel your burns and bruises healing, its oddly comforting</span>")
	..()

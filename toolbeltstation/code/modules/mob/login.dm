  /////////////////////////////////////
 // Toolbelt station mob login code //
/////////////////////////////////////
// This runs AFTER everything else in the /mob/login() proc that is defined in code\modules\mob\login.dm.
// Currently used for the first join rules prompt.
//

/mob/proc/toolbelt_on_mob_login()
    if(client)
        if(client.prefs)
            var/datum/preferences/prefs = client.prefs
            if (!prefs.rules_prompted)
                prefs.rules_prompted = TRUE
                var/response = alert(client, "We can see that this is your first time joining our server. We recommend giving our server rules a read.\nWould you like to open the rules?\nThis is a one-time prompt.", "Rules Prompt", "Yes", "No")
                if (response == "Yes")
                    client.rules()

                prefs.save_preferences()
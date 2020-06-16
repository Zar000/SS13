/*
Universal Recorder with following recording - For syndie exploration away mission.

"This is my first flight log I guess...

I don't know how I survived that shitshow but now I'm here.

I've been blindly traveling for a day in this damned pod but shortage of hyperfuel is becoming an issue.

I'll have to drop out of hyperflight soon, lets just hope for the best..."´



Paper for Syndie Expedition Cruiser - Away mission

^|Gateway Infiltration Experiment|^

## Entry 1-A
 * Experiment Status
Complete failure, loss of an Agent to a rouge Goliath after achieving linkage to a wrong location.

## Entry 1-B
 * Experiment Status
Strides toward improvement, managed to link our Gateway Device to target yet unexpected interference led to delimbing of one reconnaissance team agent.

## Entry 1-C
 * Expermiment Status
Success! We managed to achieve a stable Gateway link with target, preparations for infiltrations have begun.
*/
/obj/item/paper/fluff/awaymissions/syndicateexpedition/gatewayexperiment
	name = "Gateway Infiltration Experiment"
	info = "<h1><center>Gateway Infiltration Experiment</center></h3><br><hr>\
            <h2>Entry 1-A</h2><br>\
            <b>EXPERIMENT STATUS:</b><br>\
            Complete failure, loss of an agent to a wild Goliath after achieving linkage to a wrong location.<br>\
            <h2>Entry 1-B</h2><br>\
            <b>EXPERIMENT STATUS:</b><br>\
            Strides toward improvement, managed to link our Gateway Device to target, however unexpected interference led to delimbing of one reconnaissance team agent.<br>\
            <h2>Entry 1-C</h2><br>\
            <b>EXPERIMENT STATUS:</b><br>\
            Success! We managed to achieve a stable Gateway link with target, preparations for infiltration have begun."

/obj/item/tape/fluff/awaymissions/syndicateexpedition/shuttle
    name = "old tape"
    desc = "An ancient magnetic tape. It's amazing this still plays."
    icon_state = "tape_red"
    storedinfo = list(
        "\[00:02\] <span class='game say'><span class='name'>male voice</span> <span class='message'>says, \"<span class=' '>This is my first flight log, I guess...</span>\"</span></span>",
        "\[00:04\] <span class='game say'><span class='name'>male voice</span> <span class='message'>says, \"<span class=' '>I don't know how I survived that shitshow but now I'm here.</span>\"</span></span>",
        "\[00:07\] <span class='game say'><span class='name'>male voice</span> <span class='message'>says, \"<span class=' '>I've been blindly traveling for about a day in this damned pod but shortage of hyperfuel is becoming an issue.</span>\"</span></span>",
        "\[00:10\] <span class='game say'><span class='name'>male voice</span> <span class='message'>says, \"<span class=' '>I'll have to drop out of hyperflight soon, lets just hope for the best...</span>\"</span></span>"
    )
    timestamp = list(2,4,7,10)
    used_capacity = 10

/obj/item/taperecorder/awaymissions/syndicateexpedition/shuttle
    name = "dusty universal recorder"
    desc = "An old, dusty universal recorder. It's a miracle this still works."
    starting_tape_type = /obj/item/tape/fluff/awaymissions/syndicateexpedition/shuttle

/area/awaymission/syndicateexpedition/mothership
    name = "Syndicate Expedition Mothership"
    icon_state = "away"
    has_gravity = STANDARD_GRAVITY
    requires_power = FALSE
    dynamic_lighting = DYNAMIC_LIGHTING_ENABLED

/area/awaymission/syndicateexpedition/trooptransport
    name = "Syndicate Troop Transport"
    icon_state = "away3"
    has_gravity = STANDARD_GRAVITY
    requires_power = FALSE
    dynamic_lighting = DYNAMIC_LIGHTING_ENABLED

/area/awaymission/syndicateexpedition/hydroponics
    name = "Syndicate Hydroponics Ship"
    icon_state = "away2"
    has_gravity = STANDARD_GRAVITY
    requires_power = FALSE
    dynamic_lighting = DYNAMIC_LIGHTING_ENABLED

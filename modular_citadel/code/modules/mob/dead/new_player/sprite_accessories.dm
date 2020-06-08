/datum/sprite_accessory
	var/extra = FALSE
	var/extra_color_src = MUTCOLORS2						//The color source for the extra overlay.
	var/extra2 = FALSE
	var/extra2_color_src = MUTCOLORS3
	var/list/ckeys_allowed

/***************** Alphabetical Order please ***************
************* Keep it to Ears, Tails, Tails Animated *********/


/******************************************
**************** Snouts *******************
*******************************************/

/datum/sprite_accessory/mam_snouts/sharp
	name = "Sharp"
	icon_state = "sharp"
	color_src = MUTCOLORS

/datum/sprite_accessory/mam_snouts/round
	name = "Round"
	icon_state = "round"
	color_src = MUTCOLORS

/datum/sprite_accessory/mam_snouts/sharplight
	name = "Sharp + Light"
	icon_state = "sharplight"
	color_src = MUTCOLORS

/datum/sprite_accessory/mam_snouts/roundlight
	name = "Round + Light"
	icon_state = "roundlight"
	color_src = MUTCOLORS

/******************************************
***************** Ears ********************
*******************************************/

/datum/sprite_accessory/mam_ears/cat
	name = "Cat"
	icon_state = "cat"
	hasinner = 1
	color_src = HAIR

/******************************************
*************** Ayyliums ******************
*******************************************/

//Xeno Dorsal Tubes
/datum/sprite_accessory/xeno_dorsal
	icon = 'modular_citadel/icons/mob/xeno_parts_greyscale.dmi'

/datum/sprite_accessory/xeno_dorsal/standard
	name = "Standard"
	icon_state = "standard"

/datum/sprite_accessory/xeno_dorsal/royal
	name = "Royal"
	icon_state = "royal"

/datum/sprite_accessory/xeno_dorsal/down
	name = "Dorsal Down"
	icon_state = "down"

//Xeno Tail
/datum/sprite_accessory/xeno_tail
	icon = 'modular_citadel/icons/mob/xeno_parts_greyscale.dmi'

/datum/sprite_accessory/xeno_tail/none
	name = "None"

/datum/sprite_accessory/xeno_tail/standard
	name = "Xenomorph Tail"
	icon_state = "xeno"

//Xeno Caste Heads
/datum/sprite_accessory/xeno_head
	icon = 'modular_citadel/icons/mob/xeno_parts_greyscale.dmi'

/datum/sprite_accessory/xeno_head/standard
	name = "Standard"
	icon_state = "standard"

/datum/sprite_accessory/xeno_head/royal
	name = "royal"
	icon_state = "royal"

/datum/sprite_accessory/xeno_head/hollywood
	name = "hollywood"
	icon_state = "hollywood"

/datum/sprite_accessory/xeno_head/warrior
	name = "warrior"
	icon_state = "warrior"

/*
// IPCs
/datum/sprite_accessory/screen
	icon = 'modular_citadel/icons/mob/ipc_screens.dmi'
	color_src = null

/datum/sprite_accessory/screen/blank
	name = "Blank"
	icon_state = "blank"

/datum/sprite_accessory/screen/pink
	name = "Pink"
	icon_state = "pink"

/datum/sprite_accessory/screen/green
	name = "Green"
	icon_state = "green"

/datum/sprite_accessory/screen/red
	name = "Red"
	icon_state = "red"

/datum/sprite_accessory/screen/blue
	name = "Blue"
	icon_state = "blue"

/datum/sprite_accessory/screen/yellow
	name = "Yellow"
	icon_state = "yellow"

/datum/sprite_accessory/screen/shower
	name = "Shower"
	icon_state = "shower"

/datum/sprite_accessory/screen/nature
	name = "Nature"
	icon_state = "nature"

/datum/sprite_accessory/screen/eight
	name = "Eight"
	icon_state = "eight"

/datum/sprite_accessory/screen/goggles
	name = "Goggles"
	icon_state = "goggles"

/datum/sprite_accessory/screen/heart
	name = "Heart"
	icon_state = "heart"

/datum/sprite_accessory/screen/monoeye
	name = "Mono eye"
	icon_state = "monoeye"

/datum/sprite_accessory/screen/breakout
	name = "Breakout"
	icon_state = "breakout"

/datum/sprite_accessory/screen/purple
	name = "Purple"
	icon_state = "purple"

/datum/sprite_accessory/screen/scroll
	name = "Scroll"
	icon_state = "scroll"

/datum/sprite_accessory/screen/console
	name = "Console"
	icon_state = "console"

/datum/sprite_accessory/screen/rgb
	name = "RGB"
	icon_state = "rgb"

/datum/sprite_accessory/screen/golglider
	name = "Gol Glider"
	icon_state = "golglider"

/datum/sprite_accessory/screen/rainbow
	name = "Rainbow"
	icon_state = "rainbow"

/datum/sprite_accessory/screen/sunburst
	name = "Sunburst"
	icon_state = "sunburst"

/datum/sprite_accessory/screen/static
	name = "Static"
	icon_state = "static"

//Oracle Station sprites

/datum/sprite_accessory/screen/bsod
	name = "BSOD"
	icon_state = "bsod"

/datum/sprite_accessory/screen/redtext
	name = "Red Text"
	icon_state = "retext"

/datum/sprite_accessory/screen/sinewave
	name = "Sine wave"
	icon_state = "sinewave"

/datum/sprite_accessory/screen/squarewave
	name = "Square wave"
	icon_state = "squarwave"

/datum/sprite_accessory/screen/ecgwave
	name = "ECG wave"
	icon_state = "ecgwave"

/datum/sprite_accessory/screen/eyes
	name = "Eyes"
	icon_state = "eyes"

/datum/sprite_accessory/screen/textdrop
	name = "Text drop"
	icon_state = "textdrop"

/datum/sprite_accessory/screen/stars
	name = "Stars"
	icon_state = "stars"

// IPC Antennas

/datum/sprite_accessory/antenna
	icon = 'modular_citadel/icons/mob/ipc_antennas.dmi'
	color_src = MUTCOLORS2

/datum/sprite_accessory/antenna/none
	name = "None"
	icon_state = "None"

/datum/sprite_accessory/antenna/antennae
	name = "Angled Antennae"
	icon_state = "antennae"

/datum/sprite_accessory/antenna/tvantennae
	name = "TV Antennae"
	icon_state = "tvantennae"

/datum/sprite_accessory/antenna/cyberhead
	name = "Cyberhead"
	icon_state = "cyberhead"

/datum/sprite_accessory/antenna/antlers
	name = "Antlers"
	icon_state = "antlers"

/datum/sprite_accessory/antenna/crowned
	name = "Crowned"
	icon_state = "crowned"
*/

/*************** VIRGO PORTED HAIRS ****************************/
#define VHAIR(_name, new_state) /datum/sprite_accessory/hair/##new_state/icon_state=#new_state;/datum/sprite_accessory/hair/##new_state/name = #_name + " (Virgo)"
//VIRGO PORTED HAIRS
VHAIR("Short Hair Rosa", hair_rosa_s)
VHAIR("Short Hair 80s", hair_80s_s)
VHAIR("Long Bedhead", hair_long_bedhead_s)
VHAIR("Dave", hair_dave_s)
VHAIR("Country", hair_country_s)
VHAIR("Shy", hair_shy_s)
VHAIR("Unshaven Mohawk", hair_unshaven_mohawk_s)
VHAIR("Manbun", hair_manbun_s)
VHAIR("Longer Bedhead", hair_longer_bedhead_s)
VHAIR("Ponytail", hair_ponytail_s)
VHAIR("Ziegler", hair_ziegler_s)
VHAIR("Emo Fringe", hair_emofringe_s)
VHAIR("Very Short Over Eye Alt", hair_veryshortovereyealternate_s)
VHAIR("Shorthime", hair_shorthime_s)
VHAIR("High Tight", hair_hightight_s)
VHAIR("Thinning Front", hair_thinningfront_s)
VHAIR("Big Afro", hair_bigafro_s)
VHAIR("Afro", hair_afro_s)
VHAIR("High Braid", hair_hbraid_s)
VHAIR("Braid", hair_braid_s)
VHAIR("Sargeant", hair_sargeant_s)
VHAIR("Gelled", hair_gelled_s)
VHAIR("Kagami", hair_kagami_s)
VHAIR("ShortTail", hair_stail_s)
VHAIR("Gentle", hair_gentle_s)
VHAIR("Grande", hair_grande_s)
VHAIR("Bobcurl", hair_bobcurl_s)
VHAIR("Pompadeur", hair_pompadour_s)
VHAIR("Plait", hair_plait_s)
VHAIR("Long", hair_long_s)
VHAIR("Rattail", hair_rattail_s)
VHAIR("Tajspiky", hair_tajspiky_s)
VHAIR("Messy", hair_messy_s)
VHAIR("Bangs", hair_bangs_s)
VHAIR("TBraid", hair_tbraid_s)
VHAIR("Toriyama2", hair_toriyama2_s)
VHAIR("CIA", hair_cia_s)
VHAIR("Mulder", hair_mulder_s)
VHAIR("Scully", hair_scully_s)
VHAIR("Nitori", hair_nitori_s)
VHAIR("Joestar", hair_joestar_s)
VHAIR("Ponytail4", hair_ponytail4_s)
VHAIR("Ponytail5", hair_ponytail5_s)
VHAIR("Beehive2", hair_beehive2_s)
VHAIR("Short Braid", hair_shortbraid_s)
VHAIR("Reverse Mohawk", hair_reversemohawk_s)
VHAIR("SHort Bangs", hair_shortbangs_s)
VHAIR("Half Shaved", hair_halfshaved_s)
VHAIR("Longer Alt 2", hair_longeralt2_s)
VHAIR("Bun", hair_bun_s)
VHAIR("Curly", hair_curly_s)
VHAIR("Victory", hair_victory_s)
VHAIR("Ponytail6", hair_ponytail6_s)
VHAIR("Undercut3", hair_undercut3_s)
VHAIR("Bobcut Alt", hair_bobcultalt_s)
VHAIR("Fingerwave", hair_fingerwave_s)
VHAIR("Oxton", hair_oxton_s)
VHAIR("Poofy2", hair_poofy2_s)
VHAIR("Fringe Tail", hair_fringetail_s)
VHAIR("Bun3", hair_bun3_s)
VHAIR("Wisp", hair_wisp_s)
VHAIR("Undercut2", hair_undercut2_s)
VHAIR("TBob", hair_tbob_s)
VHAIR("Spiky Ponytail", hair_spikyponytail_s)
VHAIR("Rowbun", hair_rowbun_s)
VHAIR("Rowdualtail", hair_rowdualtail_s)
VHAIR("Rowbraid", hair_rowbraid_s)
VHAIR("Shaved Mohawk", hair_shavedmohawk_s)
VHAIR("Topknot", hair_topknot_s)
VHAIR("Ronin", hair_ronin_s)
VHAIR("Bowlcut2", hair_bowlcut2_s)
VHAIR("Thinning Rear", hair_thinningrear_s)
VHAIR("Thinning", hair_thinning_s)
VHAIR("Jade", hair_jade_s)
VHAIR("Bedhead", hair_bedhead_s)
VHAIR("Dreadlocks", hair_dreads_s)
VHAIR("Very Long", hair_vlong_s)
VHAIR("Jensen", hair_jensen_s)
VHAIR("Halfbang", hair_halfbang_s)
VHAIR("Kusangi", hair_kusangi_s)
VHAIR("Ponytail", hair_ponytail_s)
VHAIR("Ponytail3", hair_ponytail3_s)
VHAIR("Halfbang Alt", hair_halfbang_alt_s)
VHAIR("Bedhead V2", hair_bedheadv2_s)
VHAIR("Long Fringe", hair_longfringe_s)
VHAIR("Flair", hair_flair_s)
VHAIR("Bedhead V3", hair_bedheadv3_s)
VHAIR("Himecut", hair_himecut_s)
VHAIR("Curls", hair_curls_s)
VHAIR("Very Long Fringe", hair_vlongfringe_s)
VHAIR("Longest", hair_longest_s)
VHAIR("Father", hair_father_s)
VHAIR("Emo Long", hair_emolong_s)
VHAIR("Short Hair 3", hair_shorthair3_s)
VHAIR("Double Bun", hair_doublebun_s)
VHAIR("Sleeze", hair_sleeze_s)
VHAIR("Twintail", hair_twintail_s)
VHAIR("Emo 2", hair_emo2_s)
VHAIR("Low Fade", hair_lowfade_s)
VHAIR("Med Fade", hair_medfade_s)
VHAIR("High Fade", hair_highfade_s)
VHAIR("Bald Fade", hair_baldfade_s)
VHAIR("No Fade", hair_nofade_s)
VHAIR("Trim Flat", hair_trimflat_s)
VHAIR("Shaved", hair_shaved_s)
VHAIR("Trimmed", hair_trimmed_s)
VHAIR("Tight Bun", hair_tightbun_s)
VHAIR("Short Hair 4", hair_d_s)
VHAIR("Short Hair 5", hair_e_s)
VHAIR("Short Hair 6", hair_f_s)
VHAIR("Skinhead", hair_skinhead_s)
VHAIR("Afro2", hair_afro2_s)
VHAIR("Bobcut", hair_bobcut_s)
VHAIR("Emo", hair_emo_s)
VHAIR("Long Over Eye", hair_longovereye_s)
VHAIR("Feather", hair_feather_s)
VHAIR("Hitop", hair_hitop_s)
VHAIR("Short Over Eye", hair_shortoverye_s)
VHAIR("Straight", hair_straight_s)
VHAIR("Buzzcut", hair_buzzcut_s)
VHAIR("Combover", hair_combover_s)
VHAIR("Crewcut", hair_crewcut_s)
VHAIR("Devillock", hair_devilock_s)
VHAIR("Clean", hair_clean_s)
VHAIR("Shaggy", hair_shaggy_s)
VHAIR("Updo", hair_updo_s)
VHAIR("Mohawk", hair_mohawk_s)
VHAIR("Odango", hair_odango_s)
VHAIR("Ombre", hair_ombre_s)
VHAIR("Parted", hair_parted_s)
VHAIR("Quiff", hair_quiff_s)
VHAIR("Volaju", hair_volaju_s)
VHAIR("Bun2", hair_bun2_s)
VHAIR("Rows1", hair_rows1_s)
VHAIR("Rows2", hair_rows2_s)
VHAIR("Dandy Pompadour", hair_dandypompadour_s)
VHAIR("Poofy", hair_poofy_s)
VHAIR("Toriyama", hair_toriyama_s)
VHAIR("Drillruru", hair_drillruru_s)
VHAIR("Bowlcut", hair_bowlcut_s)
VHAIR("Coffee House", hair_coffeehouse_s)
VHAIR("Family Man", hair_thefamilyman_s)
VHAIR("Shaved Part", hair_shavedpart_s)
VHAIR("Modern", hair_modern_s)
VHAIR("One Shoulder", hair_oneshoulder_s)
VHAIR("Very Short Over Eye", hair_veryshortovereye_s)
VHAIR("Unkept", hair_unkept_s)
VHAIR("Wife", hair_wife_s)
VHAIR("Nia", hair_nia_s)
VHAIR("Undercut", hair_undercut_s)
VHAIR("Bobcut Alt", hair_bobcutalt_s)
VHAIR("Short Hair 4 alt", hair_shorthair4_s)
VHAIR("Tressshoulder", hair_tressshoulder_s)
 //END
#undef VHAIR

#define VFACE(_name, new_state) /datum/sprite_accessory/facial_hair/##new_state/icon_state=#new_state;;/datum/sprite_accessory/facial_hair/##new_state/name= #_name + " (Virgo)"
VFACE("Watson", facial_watson_s)
VFACE("Chaplin", facial_chaplin_s)
VFACE("Fullbeard", facial_fullbeard_s)
VFACE("Vandyke", facial_vandyke_s)
VFACE("Elvis", facial_elvis_s)
VFACE("Abe", facial_abe_s)
VFACE("Chin", facial_chin_s)
VFACE("GT", facial_gt_s)
VFACE("Hip", facial_hip_s)
VFACE("Hogan", facial_hogan_s)
VFACE("Selleck", facial_selleck_s)
VFACE("Neckbeard", facial_neckbeard_s)
VFACE("Longbeard", facial_longbeard_s)
VFACE("Dwarf", facial_dwarf_s)
VFACE("Sideburn", facial_sideburn_s)
VFACE("Mutton", facial_mutton_s)
VFACE("Moustache", facial_moustache_s)
VFACE("Pencilstache", facial_pencilstache_s)
VFACE("Goatee", facial_goatee_s)
VFACE("Smallstache", facial_smallstache_s)
VFACE("Volaju", facial_volaju_s)
VFACE("3 O\'clock", facial_3oclock_s)
VFACE("5 O\'clock", facial_5oclock_s)
VFACE("7 O\'clock", facial_7oclock_s)
VFACE("5 O\'clock Moustache", facial_5oclockmoustache_s)
VFACE("7 O\'clock", facial_7oclockmoustache_s)
VFACE("Walrus", facial_walrus_s)
VFACE("Muttonmus", facial_muttonmus_s)
VFACE("Wise", facial_wise_s)
VFACE("Martial Artist", facial_martialartist_s)
VFACE("Dorsalfnil", facial_dorsalfnil_s)
VFACE("Hornadorns", facial_hornadorns_s)
VFACE("Spike", facial_spike_s)
VFACE("Chinhorns", facial_chinhorns_s)
VFACE("Cropped Fullbeard", facial_croppedfullbeard_s)
VFACE("Chinless Beard", facial_chinlessbeard_s)
VFACE("Moonshiner", facial_moonshiner_s)
VFACE("Tribearder", facial_tribearder_s)
#undef VFACE

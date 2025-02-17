/*
 FUN ZONE OF ADMIN LISTINGS
 Try to keep this in sync with __DEFINES/traits.dm
 quirks have it's own panel so we don't need them here.
*/
GLOBAL_LIST_INIT(traits_by_type, list(
	/mob = list(
		"TRAIT_PACIFISM" = TRAIT_PACIFISM,
		"TRAIT_WATERBREATH"	= TRAIT_WATERBREATH,
		"BLOODCRAWL" = TRAIT_BLOODCRAWL,
		"BLOODCRAWL_EAT" = TRAIT_BLOODCRAWL_EAT,
		"JESTER" = TRAIT_JESTER,
		"TRAIT_ELITE_CHALLENGER" = TRAIT_ELITE_CHALLENGER,
		"TRAIT_MUTE" = TRAIT_MUTE,
		"TRAIT_DEAF" = TRAIT_DEAF,
		"SECDEATH" = TRAIT_SECDEATH,
		"TRAIT_LASEREYES" = TRAIT_LASEREYES,
		"TRAIT_AI_UNTRACKABLE" = TRAIT_AI_UNTRACKABLE,
		"TRAIT_FAKEDEATH" = TRAIT_FAKEDEATH,
		"TRAIT_XENO_HOST" = TRAIT_XENO_HOST,
		"TRAIT_GOTTAGOFAST" = TRAIT_GOTTAGOFAST,
		"TRAIT_GOTTAGONOTSOFAST" = TRAIT_GOTTAGONOTSOFAST
	),
	/obj/item = list(
    	"TRAIT_CMAGGED" = TRAIT_CMAGGED
	)))


/// value -> trait name, generated on use from trait_by_type global
GLOBAL_LIST(trait_name_map)

/proc/generate_trait_name_map()
	. = list()
	for(var/key in GLOB.traits_by_type)
		for(var/tname in GLOB.traits_by_type[key])
			var/val = GLOB.traits_by_type[key][tname]
			.[val] = tname

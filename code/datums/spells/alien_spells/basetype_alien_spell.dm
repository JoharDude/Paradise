/obj/effect/proc_holder/spell/alien_spell
	action_background_icon = 'icons/mob/actions/actions.dmi'
	action_background_icon_state = "bg_alien"
	clothes_req = FALSE
	human_req = FALSE
	/// Extremely fast cooldown, only present so the cooldown system doesn't explode
	base_cooldown = 1
	create_attack_logs = FALSE
	/// Every alien spell creates only logs, no attack messages on someone placing weeds, but you DO get attack messages on neurotoxin and corrosive acid
	create_custom_logs = TRUE
	/// How much plasma it costs to use this
	var/plasma_cost = 0


/// Every single alien spell uses a "spell name + plasmacost" format
/obj/effect/proc_holder/spell/alien_spell/Initialize(mapload)
	. = ..()
	if(plasma_cost)
		name = "[name] ([plasma_cost])"


/obj/effect/proc_holder/spell/alien_spell/write_custom_logs(list/targets, mob/user)
	user.create_log(ATTACK_LOG, "Cast the spell [name]")


/obj/effect/proc_holder/spell/alien_spell/create_new_handler()
	var/datum/spell_handler/alien/H = new
	H.plasma_cost = plasma_cost
	return H


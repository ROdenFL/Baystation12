//// INTERNAL IPCs COMPUTER
/obj/item/modular_computer/ecs
	name = "exonet connection system"
	desc = "A cirquit with some ports and wires."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "ecs_on"
	icon_state_unpowered = "ecs_off"
	anchored = FALSE
	w_class = ITEM_SIZE_NORMAL
	base_idle_power_usage = 5
	base_active_power_usage = 50
	light_strength = 0
	max_damage = 100
	broken_damage = 60
	max_hardware_size = 2
	hardware_flag = PROGRAM_LAPTOP
	exonets_ipc_computer = TRUE


/obj/item/modular_computer/ecs/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive/advanced(src)
	network_card = new/obj/item/stock_parts/computer/network_card/advanced(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module/converter(src)

/obj/item/modular_computer/ecs/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())


/obj/item/modular_computer/ecs/attack_self(var/mob/user) // Оставляем возможность вызывать окно только через абилку ИПСа
	return


/obj/item/modular_computer/ecs/proc/open_terminal_ecs(var/mob/user)
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	return  os.open_terminal(user)

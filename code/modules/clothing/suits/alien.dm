//Unathi clothing.

/obj/item/clothing/suit/unathi/robe
	name = "roughspun robes"
	desc = "A traditional Unathi garment."
	icon_state = "robe-unathi"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS

/obj/item/clothing/suit/unathi/mantle
	name = "hide mantle"
	desc = "A rather grisly selection of cured hides and skin, sewn together to form a ragged mantle."
	icon_state = "mantle-unathi"
	body_parts_covered = UPPER_TORSO

//Taj clothing.

/obj/item/clothing/suit/xeno/furs
	name = "heavy furs"
	desc = "A traditional Zhan-Khazan garment."
	icon_state = "zhan_furs"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS

/obj/item/clothing/head/xeno/scarf
	name = "headscarf"
	desc = "A scarf of coarse fabric. Seems to have ear-holes."
	icon_state = "zhan_scarf"
	body_parts_covered = HEAD|FACE

/obj/item/clothing/shoes/sandal/xeno/caligae
	name = "caligae"
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara."
	icon_state = "caligae"
	item_state = "caligae"
	body_parts_covered = FEET|LEGS
	species_restricted = list(SPECIES_TAJARA)

/obj/item/clothing/shoes/sandal/xeno/caligae/white
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a white covering."
	icon_state = "whitecaligae"
	item_state = "whitecaligae"

/obj/item/clothing/shoes/sandal/xeno/caligae/grey
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a grey covering."
	icon_state = "greycaligae"
	item_state = "greycaligae"

/obj/item/clothing/shoes/sandal/xeno/caligae/black
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a black covering."
	icon_state = "blackcaligae"
	item_state = "blackcaligae"

/obj/item/clothing/accessory/shouldercape
	name = "shoulder cape"
	desc = "A simple shoulder cape."
	icon_state = "gruntcape"
	slot = ACCESSORY_SLOT_INSIGNIA // Adding again in case we want to change it in the future.

/obj/item/clothing/accessory/shouldercape/grunt
	name = "modir cape"
	desc = "A simple looking cape with a couple of runes woven into the fabric."
	icon_state = "gruntcape" // Again, just in case it is changed.

/obj/item/clothing/accessory/shouldercape/officer
	name = "nraji cape"
	desc = "A decorated cape. Runed patterns have been woven into the fabric."
	icon_state = "officercape"

/obj/item/clothing/accessory/shouldercape/command
	name = "hejun cape"
	desc = "A heavily decorated cape with rank emblems on the shoulders signifying positions within the Tajaran govenment. An ornate runed design has been woven into the fabric of it"
	icon_state = "commandcape"

/obj/item/clothing/accessory/shouldercape/general
	name = "ginajir cape"
	desc = "An extremely decorated cape with an intricately runed design has been woven into the fabric of this cape with great care. This cape can only be found within the Tajaran elite."
	icon_state = "leadercape"

//Voxclothing

/obj/item/clothing/suit/armor/vox_scrap
	name = "rusted metal armor"
	desc = "A hodgepodge of various pieces of unknown heavy metal scrapped together into a rudimentary vox-shaped piece of armor."
	allowed = list(/obj/item/gun, /obj/item/tank)
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		bomb = ARMOR_BOMB_PADDED
		)
	icon_state = "vox-scrap"
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	species_restricted = list(SPECIES_VOX, SPECIES_VOX_ARMALIS)
	siemens_coefficient = 1 //Its literally metal

/obj/item/clothing/suit/armor/vox_scrap/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 2

/obj/item/clothing/head/helmet/vox_scrap
	name = "rusted metal helmet"
	desc = "A hodgepodge of various pieces of unknown heavy metal scrapped together into a rudimentary vox-shaped helmet."
	icon = 'icons/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'icons/mob/species/vox/onmob_head_vox.dmi')
	icon_state = "vox_scrap"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		bomb = ARMOR_BOMB_PADDED
		)
	item_flags = ITEM_FLAG_THICKMATERIAL
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	body_parts_covered = HEAD
	species_restricted = list(SPECIES_VOX)
	siemens_coefficient = 1
	tint = 4

/obj/item/clothing/head/helmet/vox_scrap/New()
	..()
	slowdown_per_slot[slot_head] = 0.7

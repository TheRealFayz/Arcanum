------------------------------------------------------------------------------------------------------
-- Arcanum

-- Addon pour Mage inspiré du célébre Necrosis
-- Gestion des buffs, des portails et Compteur de Composants

-- Remerciements aux auteurs de Necrosis

-- Auteur Lenny415

-- Serveur:
-- Uliss, Nausicaa, Solcarlus, Thémys on Medivh EU
------------------------------------------------------------------------------------------------------

function Arcanum_Localization_Dialog_En()
	function ArcanumLocalization()
		Arcanum_Localization_Speech_En();
	end
	-- Raccourcis claviers
	BINDING_HEADER_ARCANUM_BIND = "Arcanum";
	BINDING_NAME_STEED = "Steed";
	BINDING_NAME_FROSTARMOR = "Ice Armor";
	BINDING_NAME_MAGEARMOR = "Mage Armor";
	BINDING_NAME_ARCANEINTELLECT = "Arcane Intellect";
	BINDING_NAME_ARCANEBRILLIANCE = "Arcane Brilliance";
	BINDING_NAME_AMPLIFYMAGIC = "Amplify Magic";
	BINDING_NAME_DAMPENMAGIC = "Dampen Magic";
	BINDING_NAME_CONJUREFOOD = "Conjure Food";
	BINDING_NAME_USEFOODWATER = "Eating & Drinking";
	BINDING_NAME_USEFOOD = "Eating";
	BINDING_NAME_CONJUREWATER = "Conjure Water";
	BINDING_NAME_USEWATER = "Drinking";
	BINDING_NAME_RITUALOFREFRESHMENT = "Ritual of Refreshment";
	BINDING_NAME_CONJUREMANAGEM = "Conjure a mana Gem";
	BINDING_NAME_USEMANAGEM = "Using a mana gem";
	BINDING_NAME_EVOCATION = "Evocation";
	BINDING_NAME_TELEPORT1 = "Teleport 1";
	BINDING_NAME_TELEPORT2 = "Teleport 2";
	BINDING_NAME_TELEPORT3 = "Teleport 3";
	BINDING_NAME_TELEPORT4 = "Teleport 4";
	BINDING_NAME_PORTAL1 = "Portal 1";
	BINDING_NAME_PORTAL2 = "Portal 2";
	BINDING_NAME_PORTAL3 = "Portal 3";
	BINDING_NAME_PORTAL4 = "Portal 4";

	ARCANUM_CONFIGURATION = {
		["Menu1"] = "Messages",
		["MessageMenu1"] = "Player :",
		["Tooltip0"] = "No Tooltip",
		["Tooltip1"] = "Partial Tooltips",
		["Tooltip2"] = "Full Tooltips",
		["ChatType"] = "Display info as system messages (displays as errors if unchecked)",
		["HideInCombatMessage"] = "Hide arcanum when in combat",
		["OrangesMessage"] = "Show messages when summoning oranges",
		["PortalMessage"] = "Show messages when summoning a portal",
		["ArcanumButtonDisplay"] = "Display inside the sphere :",
		["InsideDisplay"] = "Display inside the sphere:",
		["DisplayHearthStone"] = "HearthStone",
		["DisplayManaGem"] = "ManaGem",
		["DisplayEvocation"] = "Evocation",
		["DisplayIceBlock"] = "IceBlock",
		["DisplayColdSnap"] = "ColdSnap",
		["DisplayIntell"] = "Intell.",
		["DisplayArmor"] = "Armor",
		["DisplayBandage"] = "Bandage",
		["HealthColor"] = "Health bar color",
		["ManaColor"] = "Mana bar color",
		["ButtonColor"] = "Mouseover buttons color",

		["Menu2"] = "Misc.",
		["LevelBuff"] = "Buff the target depending on their level",
		["EvocationLimit"] = "Mana percentage Evocation can be casted",
		["DeleteFood"] = "Delete conjured food",
		["DeleteWater"] = "Delete conjured water",
		["DeleteManaGem"] = "Delete conjured mana gems",

		["Menu3"] = "Reagent Auto buy",
		["ReagentSort"] = "Sort reagents in same bag",
		["ReagentBag"] = "Reagent bag",
		["ReagentBuy"] = "Auto buy reagents",
		["Reagent"] = "Reagent Maximum quantity in bags:",
		["Powder"] = "Arcane Powder",
		["Teleport"] = "Rune of Teleportation",
		["Portal"] = "Rune of Portals",

		["Menu4"] = "Graphical Settings",
		["Toggle"] = "Activate Arcanum",
		["Lock"] = "Lock Arcanum",
		["IconsLock"] = "Lock Arcanum Buttons",
		["MenuPosition"] = "Menu Opening ways:",
		["BuffMenu"] = "Buffs: top/bottom wether checked, right/left or not",
		["ArmorMenu"] = "Armors: top/bottom wether checked, right/left or not",
		["MagicMenu"] = "Magic: top/bottom wether checked, right/left or not",
		["PortalMenu"] = "Portals: top/bottom wether checked, right/left or not",
		["MountMenu"] = "Mounts: top/bottom wether checked, right/left or not",
		["ArcanumRotation"] = "Rotate Arcanum",
		["ArcanumSize"] = "Size of Arcanum",

		["Menu5"] = "Buttons",
		["Button"] = "Show button of:",
		["Order"] = "Change buttons order:",
		["BuffButton"] = "buffs",
		["ArmorButton"] = "armors",
		["MagicButton"] = "magic",
		["PortalButton"] = "portals",
		["MountButton"] = "mount",
		["FoodButton"] = "food",
		["WaterButton"] = "water",
		["ManaGemButton"] = "mana gem",
	};

	ARCANUM_CLICK = {
		[1] = "Configuration panel";
		[2] = "Eating & Drinking";
		[3] = "Hearthstone";
		[4] = "Evocation";
		[5] = "Mana gems";
		[6] = "Ice block";
		[7] = "Trade";
		[8] = "Toggle solo/group spells";
	};

	ARCANUM_INSIDE_DISPLAY = {
		"Health",
		"Mana",
		"Nothing",
	};

	-- Traduction
	ARCANUM_TRANSLATION = {
		["Mounting"] = "Summoning",
		["Hearth"] = "Hearthstone";
		["Cooldown"] = "Cooldown",
		["Rank"] = "Rank",
	};

	ARCANUM_TOOLTIP_DATA = {
		["LastSpell"] = "Left click to cast",
		["SpellTimer"] = {
			Label = "Spell Durations",
			Text = "Active Spells on the target",
			Right = "<white>Right Click for Hearthstone to "
		};
	};

	-- Message
	ARCANUM_MESSAGE = {
		["Interface"] = {
			["InitOn"] = "<white>activated. /arcanum or /arca to show/hide the window, /arca options to show options",
			["InitOff"] = "<white>deactivated. /arca to show again",
			["DefaultConfig"] = "<lightYellow>Default configuration loaded.",
			["UserConfig"] = "<lightYellow>Configuration loaded."
		},
		["Tooltip"] = {
			["LeftClick"] = "Left Click: ",
			["MiddleClick"] = "Middle Click: ",
			["RightClick"] = "Right Click: ",
			["Cooldown"] = "Hearthstone available in ",
			["Minimap"] = "Configuration panel",
		},
		["Error"] = {
			["NoHearthstone"] = "No Hearthstone has been found in inventory.",
			["NoMount"] = "No mount has been found in inventory.",
		},
		["Autobuy"] = "Buying ",
	};
end

function Arcanum_Localization_Speech_En()
	ARCANUM_SUMMON_ORANGE_MESSAGE = "This portal should summon oranges, but if you see tentacles RUN!  Yogg-Saron was not happy the last time...";

	ARCANUM_PORTAL_MESSAGES = {
		[1] = {
			"Step right up! A portal to <city> is ready! Disclaimer: Missing limbs during transport are not <me>'s responsibility."
		},
		[2] = {
			"Portal to <city> is open. Monsters pouring out are complimentary!"
		},
		[3] = {
			"Summoning a portal to <city>! Fingers crossed it's not a shortcut to C'Thun's stomach this time."
		},
		[4] = {
			"Portal to <city> is open. Watch your step—rumor has it something creepy came through last time."
		},
		[5] = {
			"<me> opens a portal to <city>. It's safe! (Mostly. Sometimes. Probably not.)"
		},		
		[6] = {
			"<me> says: Hop through to <city>. Just... don’t think about what happened to the last guy."
		},	
		[7] = {
			"The portal to <city> is open. If you see tentacles, uh... just run."
		},
		[8] = {
			"Here is your portal to <city>. If you see C'Thun on the way, tell him <me> says hi."
		},
		[9] = {
			"Portal to <city> is open. Warning: Some assembly may be required on arrival."
		},
		[10] = {
			"Portal to <city> is ready. Side effects may include nausea, disorientation, and eldritch whispers."
		},
	};
end

if (GetLocale() == "enUS") or (GetLocale() == "enGB") then
	ARCANUM_SPELL_INDEXES = {
		["Frost Armor"] = 1,
		["Ice Armor"] = 2,
		["Mage Armor"] = 3,
		["Arcane Intellect"] = 4,
		["Arcane Brilliance"] = 5,
		["Dampen Magic"] = 6,
		["Amplify Magic"] = 7,
		["Conjure Food"] = 8,
		["Conjure Water"] = 9,
		["Conjure Mana Agate"] = 10,
		["Conjure Mana Jade"] = 11,
		["Conjure Mana Citrine"] = 12,
		["Conjure Mana Ruby"] = 13,
		["Evocation"] = 26,
		["Fire Ward"] = 27,
		["Frost Ward"] = 28,
		["Polymorph"] = 29,
		["Polymorph : Pig"] = 30,
		["Polymorph : Turtle"] = 31,
		["Ice Block"] = 32,
		["Cold Snap"] = 33,
		["First Aid"] = 34,
		["Ritual of Refreshment"] = 35,

		["Teleport: Darnassus"] = 41,
		["Teleport: Ironforge"] = 42,
		["Teleport: Stormwind"] = 43,
		["Teleport: Theramore"] = 44,

		["Teleport: Orgrimmar"] = 41,
		["Teleport: Thunder Bluff"] = 42,
		["Teleport: Undercity"] = 43,
		["Teleport: Stonard"] = 44,

		["Portal: Darnassus"] = 51,
		["Portal: Ironforge"] = 52,
		["Portal: Stormwind"] = 53,
		["Portal: Theramore"] = 54,

		["Portal: Orgrimmar"] = 51,
		["Portal: Thunder Bluff"] = 52,
		["Portal: Undercity"] = 53,
		["Portal: Stonard"] = 54,
	}
	-- Table des sorts du mage
	ARCANUM_SPELL_TABLE = {
		["ID"] = {},
		["Rank"] = {},
		["Name"] = {},
		["Mana"] = {},
		["Texture"] = {},
	};

	ARCANUM_MANAGEM = { "Mana Agate", "Mana Jade", "Mana Citrine", "Mana Ruby" };

	ARCANUM_FOOD = { "Conjured Muffin", "Conjured Bread", "Conjured Rye", "Conjured Pumpernickel",
	                 "Conjured Sourdough", "Conjured Sweet Roll", "Conjured Cinnamon Roll", "Conjured Mana Orange" };

	ARCANUM_WATER = { "Conjured Water", "Conjured Fresh Water", "Conjured Purified Water",
	                  "Conjured Spring Water", "Conjured Mineral Water", "Conjured Sparkling Water", "Conjured Crystal Water" };

	ARCANUM_BANDAGE = "A bandage was recently applied.";

	-- Table des items du Mage
	ARCANUM_ITEM = {
		["ArcanePowder"] = "Arcane Powder",
		["RuneOfTeleportation"] = "Rune of Teleportation",
		["RuneOfPortals"] = "Rune of Portals",
		["LightFeathers"] = "Light Feather",
		["Hearthstone"] = "Hearthstone",
		["QuirajiMount"] = "Quiraji Resonating Crystal",
	};

	HORDE_DEST = { "Darnassus", "Ironforge", "Stormwind", "Theramore" };

	ALLIANCE_DEST = { "Orgrimmar", "Thunder Bluff", "Undercity", "Stonard" };

	-- Monture	
	MOUNT = { { "Horn of the Black War Wolf", "Horn of the Brown Wolf", "Horn of the Red Wolf", "Horn of the Swift Brown Wolf", "Horn of the Timber Wolf" },
	          { "Reins of the Striped Nightsaber", "Reins of the Black War Tiger" },
	          { "Swift Zulian Tiger" },
	          { "Gray Kodo", "Great Gray Kodo", "Great White Kodo" },
	          { "Green Kodo", "Teal Kodo" },
	          { "Black War Kodo", "Brown Kodo", "Great Brown Kodo" },
	          { "Black Battlestrider", "Blue Mechanostrider", "Green Mechanostrider", "Icy Blue Mechanostrider Mod A", "Red Mechanostrider", "Swift Green Mechanostrider", "Swift White Mechanostrider", "Swift Yellow Mechanostrider", "Unpainted Mechanostrider", "White Mechanostrider Mod A" },
	          { "Stormpike Battle Charger", "Black Ram", "Black War Ram", "Brown Ram", "Frost Ram", "Gray Ram", "Swift Brown Ram", "Swift Gray Ram", "Swift White Ram", "White Ram" },
	          { "Black War Steed Bridle" },
	          { "Reins of the Winterspring Frostsaber" },
	          { "Whistle of the Black War Raptor", "Whistle of the Emerald Raptor", "Whistle of the Ivory Raptor", "Whistle of the Mottled Red Raptor", "Whistle of the Turquoise Raptor", "Whistle of the Violet Raptor", "Swift Olive Raptor", "Swift Orange Raptor", "Swift Blue Raptor", "Swift Razzashi Raptor" },
	          { "Black Stallion Bridle", "Brown Horse Bridle", "Chestnut Mare Bridle", "Palomino Bridle", "Pinto Bridle", "Swift Brown Steed", "Swift Palomino", "Swift White Steed", "White Stallion Bridle" },
	          { "Deathcharger's Reins", "Blue Skeletal Horse", "Brown Skeletal Horse", "Green Skeletal Warhorse", "Purple Skeletal Warhorse", "Red Skeletal Horse", "Red Skeletal Warhorse" },
	          { "Horn of the Arctic Wolf", "Horn of the Dire Wolf", "Horn of the Swift Gray Wolf", "Horn of the Swift Timber Wolf" },
	          { "Reins of the Frostsaber", "Reins of the Nightsaber", "Reins of the Spotted Frostsaber", "Reins of the Striped Frostsaber", "Reins of the Swift Frostsaber", "Reins of the Swift Mistsaber", "Reins of the Swift Stormsaber" },
	          { "Horn of the Frostwolf Howler" },
	};

	MOUNT_SPEED = "Increases speed by (%d+)%%.";

	MOUNT_PREFIX = { "Reins of ", "Whistle of ", "Horn of ", " Bridle" };

	QIRAJ_MOUNT = {
		"Yellow Qiraji Resonating Crystal",
		"Red Qiraji Resonating Crystal",
		"Green Qiraji Resonating Crystal",
		"Blue Qiraji Resonating Crystal",
		"Black Qiraji Resonating Crystal",
	};

end

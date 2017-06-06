
GHI_ContainerData = {
	[101] = {
		{
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_62B0D43",
			["guid"] = "063BC58C_62B0D43",
			["amount"] = 1,
		}, -- [1]
		{
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_645B706",
			["guid"] = "063BC58C_645B706",
			["amount"] = 1,
		}, -- [2]
		{
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_6459F3A",
			["guid"] = "063BC58C_6459F3A",
			["amount"] = 1,
		}, -- [3]
		{
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_645B16D",
			["guid"] = "063BC58C_645B16D",
			["amount"] = 1,
		}, -- [4]
		[0] = {
			["size"] = 24,
		},
		["size"] = 24,
		["isPublic"] = false,
		["guid"] = 101,
		["name"] = "",
		["isItemArea"] = false,
		["icon"] = "Interface\\Icons\\INV_Misc_QuestionMark",
		["texture"] = "",
	},
	["063BC58C_6459F3ABag"] = {
		[0] = {
			["size"] = 4,
		},
		["isPublic"] = false,
		["guid"] = "063BC58C_6459F3ABag",
		[2] = {
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_6459963",
			["guid"] = "063BC58C_6459963",
			["amount"] = 1,
		},
		[4] = {
			{
				["amount"] = 3,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_64060FC",
			["guid"] = "063BC58C_64060FC",
			["amount"] = 3,
		},
		["isItemArea"] = false,
		["name"] = "Hero's Inventory Pack",
		["size"] = 4,
		[3] = {
			{
				["amount"] = 1,
				["attributeValues"] = {
				},
			}, -- [1]
			["ID"] = "063BC58C_645A7F7",
			["guid"] = "063BC58C_645A7F7",
			["amount"] = 1,
		},
		["icon"] = "Interface\\Icons\\Inv_misc_bag_BigBagofEnchantments",
		["ownerItemGuid"] = "063BC58C_6459F3A",
		["texture"] = "-Bank",
	},
}
GHI_ItemData = {
	["063BC58C_6459963"] = {
		["comment"] = "Cold as death, yet it feels comfortable to touch.",
		["guid"] = "063BC58C_6459963",
		["rightClicktext"] = "Wear",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\INV_jewelcrafting_necklace1_blue",
		["quality"] = 3,
		["stackSize"] = 1,
		["white2"] = "Do not roll on Cold-checks.",
		["rightClick"] = {
			{
				["buffName"] = "Sliver of Sapphirite",
				["guid"] = "063BC58C_6459A5D",
				["range"] = 0,
				["type_name"] = "Buff",
				["amount"] = 0,
				["buffType"] = "Magic",
				["icon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
				["buffDetails"] = "This person is wearing an enchanted necklace which wards off all cold.",
				["Type"] = "buff",
				["buffIcon"] = "Interface\\Icons\\INV_jewelcrafting_necklace1_blue",
				["details"] = "Sliver of Sapphirite",
				["castOnSelf"] = true,
				["filter"] = "Helpful",
				["buffDuration"] = 0,
				["stackable"] = true,
				["untilCanceled"] = true,
				["delay"] = 0,
			}, -- [1]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 2,
		},
		["lastCastTime"] = 1420246302,
		["itemType"] = 1,
		["white1"] = "Unique",
		["version"] = 6,
		["authorName"] = "Avelock",
		["creater"] = "Avelock",
		["copyable"] = false,
		["name"] = "Sliver of Sapphirite",
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_64060FC"] = {
		["comment"] = "Light but packs a punch!",
		["guid"] = "063BC58C_64060FC",
		["rightClicktext"] = "Drink",
		["consumed"] = true,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\INV_Drink_28_GilneanFortifiedBrandy",
		["quality"] = 1,
		["stackSize"] = 20,
		["white2"] = "Roll 30+ on Cold-checks",
		["rightClick"] = {
			{
				["buffName"] = "Toasty",
				["guid"] = "063BC58C_6459A8D",
				["range"] = 0,
				["type_name"] = "Buff",
				["amount"] = 0,
				["buffType"] = "Magic",
				["icon"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
				["buffDetails"] = "Warm and toasty thanks to the Berryfizz Whisky!",
				["Type"] = "buff",
				["buffIcon"] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
				["details"] = "Toasty",
				["castOnSelf"] = true,
				["filter"] = "Helpful",
				["delay"] = 0,
				["stackable"] = false,
				["untilCanceled"] = false,
				["buffDuration"] = 3600,
			}, -- [1]
			{
				["flashRepeat"] = 1,
				["guid"] = "063BC58C_6459A9A",
				["color"] = {
					["a"] = 1,
					["name"] = "None",
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.071,
				},
				["duration"] = 0.5,
				["dynamic_rc"] = true,
				["Type"] = "script",
				["type_name"] = "Screen Effect",
				["delay"] = 0,
				["alpha"] = 1,
				["dynamic_rc_type"] = "screen_effect",
				["fade_in"] = 0.5,
				["fade_out"] = 0.5,
				["icon"] = "Interface\\Icons\\spell_nature_astralrecal",
				["details"] = "|Cffff0012Screen Effect|r",
			}, -- [2]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 3,
		},
		["name"] = "Berryfizz Whisky",
		["white1"] = "",
		["version"] = 6,
		["authorName"] = "Avelock",
		["itemType"] = 1,
		["copyable"] = false,
		["creater"] = "Avelock",
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_6459F3A"] = {
		["comment"] = "Yet to be brimming with loot.",
		["guid"] = "063BC58C_6459F3A",
		["rightClicktext"] = "Open",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\Inv_misc_bag_BigBagofEnchantments",
		["quality"] = 5,
		["stackSize"] = 1,
		["white2"] = "",
		["rightClick"] = {
			{
				["type_name"] = "Bag",
				["Type"] = "bag",
				["size"] = 4,
				["guid"] = "063BC58C_6459F6C",
				["details"] = "4 slots",
				["tradeable"] = false,
				["icon"] = "Interface\\Icons\\INV_Misc_Bag_09_Blue",
				["texture"] = "-Bank",
			}, -- [1]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 2,
		},
		["lastCastTime"] = 1420250181,
		["itemType"] = 1,
		["white1"] = "",
		["version"] = 4,
		["authorName"] = "Avelock",
		["creater"] = "Avelock",
		["copyable"] = false,
		["name"] = "Hero's Inventory Pack",
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_645A7F7"] = {
		["comment"] = "Who knows? It might come in handy!",
		["guid"] = "063BC58C_645A7F7",
		["rightClicktext"] = "Tie a Lassoo and throw.",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\INV_Misc_Noose_01",
		["quality"] = 1,
		["stackSize"] = 1,
		["white2"] = "",
		["rightClick"] = {
			{
				["type_name"] = "Expression",
				["Type"] = "expression",
				["expression_type"] = "Emote",
				["guid"] = "063BC58C_645A88E",
				["details"] = "Emote: ties a lassoo and throws it at the target.",
				["text"] = "ties a lassoo and throws it at the target.",
				["delay"] = 0,
				["icon"] = "Interface\\Icons\\Spell_Shadow_SoothingKiss",
			}, -- [1]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 2,
		},
		["lastCastTime"] = 1420245169,
		["itemType"] = 1,
		["white1"] = "",
		["version"] = 4,
		["authorName"] = "Avelock",
		["creater"] = "Avelock",
		["copyable"] = false,
		["name"] = "Coil of Rope",
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_62B0D43"] = {
		["comment"] = "A collection of myths",
		["guid"] = "063BC58C_62B0D43",
		["rightClicktext"] = "Read",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\AddOns\\GHM\\GHI_Icons\\_Book2Motif_PaladinSamwise",
		["quality"] = 3,
		["stackSize"] = 1,
		["white2"] = "",
		["rightClick"] = {
			{
				{
					["text1"] = "<HTML><BODY><P><BR/><BR/><BR/><BR/><BR/><BR/><BR/><BR/></P><H1 align=\"center\">Titanic Legends</H1><P></P></BODY></HTML>",
				}, -- [1]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Aman'Thul</H1><P><BR/>His metallic skin is platinum and eyes glow yellow. His hand holds a large staff, Orodur, with a Lightning symbol atop and electricity flows around the staff. He has long hair and a beard reaching his waist.<BR/><BR/>Aman’Thul rules the Pantheon. He is the oldest and wisest of his ancient race. Once, Aman’Thul and his brother Sargeras oversaw the creation of innumerable worlds across the Twisting Nether and gently guided countless races to greatness. Sargeras was Aman’Thul’s closest advisor and supporter until he turned to evil.</P></BODY></HTML>",
				}, -- [2]
				{
					["text1"] = "<HTML><BODY><P>Now Aman’Thul looks to his consort, Eonar, for council. Though the mysterious High Father is rarely seen, every world feels his presence. As leader of the titans, Aman’Thul is responsible for the creation of all worlds, including Azeroth. All those who revere the titans ultimately pay their respects to the High Father. On Azeroth, explorers have only recently uncovered the titans’ existence, and few aside from the Ironforge dwarves venerate them. Dwarves, being a practical lot, show their respect for the titans by delving ever deeper into their mysteries.</P></BODY></HTML>",
				}, -- [3]
				{
					["text1"] = "<HTML><BODY><P>Aman’Thul prefers to keep his distance and pound his foes with magic, casting up to three spells at once (one normal, one quickened, and one hastened). He takes to the air if it seems helpful, hovering above the conflict and raining magical destruction upon his enemies. Against great foes, he uses gate to call Eonar, Aggramar, or Norgannon to his side. He willingly enters melee if necessary, casting quickened spells every chance he can. He uses avatar if he exhausts his spells.</P></BODY></HTML>",
				}, -- [4]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Orodur</H1><P><BR/>Orodur is a giant gold staff that crackles with electricity. Ancient, glowing runes mark its length and strange winds swirl about it. Aman'Thul, Lord of the Titans, has carried Orodur since the universe's first moments.<BR/><BR/><BR/></P></BODY></HTML>",
				}, -- [5]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Eonar</H1><P><BR/>Eonar the Lifebinder is a female, bronze-skinned vanir titan. She carries an alabaster staff and flowers blossom at her feet. She is the protector of life, nature and healing in the universe and consort of Aman'Thul the Highfather.<BR/><BR/>Eonar abhors Undead, as she represents the embodiment of life. Among her casting are mass heal among other similar spells. She prefers to keep distance from battle, and is more of a supportive role to her allies in the Pantheon.</P></BODY></HTML>",
				}, -- [6]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Khaz'goroth<BR/></H1><P><BR/>Khaz'goroth, shaper of mountains and canyons, is a male Vanir Titan and the ultimate craftsman. He is a master of many arts and disciplines; with Eonar's help, he created Azeroth's dwarves, troggs, and perhaps, mountain giants. He crafted the mountains in which the Ironforge dwarves dwell — their kingdom’s name, Khaz Modan, means “mountains of Khaz.” A fiery, brooding entity, Khaz’goroth loves working at his forge and listening to tales of heroism and valor.</P></BODY></HTML>",
				}, -- [7]
				{
					["text1"] = "<HTML><BODY><P>During the empowering of the Dragon Aspects, Khaz'goroth granted dominion over the earth and deep places of the world to the noble Neltharion, the Aspect of the Black Dragonflight...who later became known as Deathwing.<BR/><BR/>He is wise in building architecture and engineering. He created and shaped the mountains of Azeroth with help of his creations, the Earthen.<BR/><BR/>He was once in charge of a Titan facility under Bael Modan.</P></BODY></HTML>",
				}, -- [8]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Vulraiis</H1><P><BR/>Khaz’goroth the Shaper crafted this enormous hammer from ultrapure thorium, after which Aman’Thul and Norgannon worked together to enchant it. The hammer’s appearance suggests a smith’s tool more than a weapon, and indeed Khaz’goroth uses it at his forge. When he wields it in combat, however, it causes great seismic eruptions and splitting earthquakes.<BR/><BR/>Recent archaeological findings have indicated traces of ultrapure thorium in the Ulduar Complex, leading to the belief Vulraiis once rested there.</P></BODY></HTML>",
				}, -- [9]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Norgannon</H1><P><BR/>Norgannon is a male aesir titan. His platinum-skinned body emanates arcane power like a tangible force, making skin prickle and hair stand on end. He wears a long cloak covering his head and a tunic, and has a long beard.<BR/><BR/>Norgannon is master of the arcane magic, knowledge, secrets and mysteries. In many of the worlds created by the titans, spellcasters revere him as paragon of their spellcrafts, and whisper his name when casting a spell while others beseech his protection against the corruption of the arcane. </P></BODY></HTML>",
				}, -- [10]
				{
					["text1"] = "<HTML><BODY><P>Azeroth doesn't know anything about him, except for his Watchers of Uldaman, Ulduar, and Uldum.<BR/><BR/>The titans prefer not to use arcane magic because of its corrupting nature. Aman'Thul the Highfather charged Norgannon with the task of cataloging all spells and magical currents in the universe, including Arcane magic. With the knowledge gathered concerning Arcane magic, the Highfather hopes one day to defeat the Burning Legion and other enemies. Norgannon knows almost everything and is passionless, his face expressionless and rigid. </P></BODY></HTML>",
				}, -- [11]
				{
					["text1"] = "<HTML><BODY><P>He is the historian of the Titans and holds a massive disc in his hand with sculpted glyphs and recordings, similar to the Discs of Norgannon within Uldaman.<BR/><BR/>When Azeroth was created, Norgannon granted a portion of his power to the blue dragon Malygos, and tasked to him to be the guardian of magic and hidden arcanum. He also gave Malygos the map to Azeroth's ley lines, known as the Arcanomicon. After defeating Malygos, Alexstrasza's Gift may contain the Mark of Norgannon.</P></BODY></HTML>",
				}, -- [12]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Golganneth</H1><P><BR/>Golganneth the Thunderer is the son of Aman'Thul and Eonar. The giant Male Aesir Titan is platinum-skinned and his weapon is a massive horn he holds on his hand. Lightning flows constantly off his eyes. He created the skies and seas of Azeroth and all the living creatures of the sea 147,000 years ago. Father creator of the Sea Giants.<BR/><BR/></P></BODY></HTML>",
				}, -- [13]
				{
					["text1"] = "<HTML><BODY><P>Golganneth takes joy in his creations and supports the Pantheon's mission to bring order to chaos. He has a massive laugh, which he uses often, and a fine sense of humor. He is a diligent, energetic titan who takes great joy in all he does. Yet, within, he loves the fury of nature. He engages combat by blowing his massive Viking-like horn weapon known as Shargahn. The horn's sound can shatter mountains, but he prefers not to use it often as his duty is to create, not to destroy. If possible, he swoops above and around any conflict, directing Shargahn's massive storms and creatures. </P></BODY></HTML>",
				}, -- [14]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Sargahn</H1><P><BR/>Shargahn is the massive horn held by Golganneth the Thunderer. This massive horn is crafted of some silvery, alien material; light reflecting from its surface breaks into its component colors in a stunning display. Golganneth the Thunderer carries Shargahn, and the horn can shatter mountains, summon storms of incredible fury and beckon the creatures of the deep.</P></BODY></HTML>",
				}, -- [15]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Aggramar</H1><P><BR/>Aggramar is a male vanir titan. The bronze giant stares down impassively, his body wrapped in a gold toga. A huge, oddly-shaped sword is sheathed across his back; the blade almost looks like the broken shard of some larger construction.<BR/><BR/>Once Sargeras's lieutenant, Aggramar took over Sargeras's position when his superior changed sides. Aggramar is now in charge of combating the Burning Legion and eliminating its demonic taint. <BR/></P></BODY></HTML>",
				}, -- [16]
				{
					["text1"] = "<HTML><BODY><P>Very bland and unemotional, Aggramar is much more cool-headed than his former master. He follows orders and implements tactics in a firm, professional manner, performing all duties as they should be done. The only emotion he feels is hate: he despises Sargeras with every ounce of his metallic blood. This rage could cloud his judgment and be his doom some day.</P></BODY></HTML>",
				}, -- [17]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Of Gorshalach, Taeshalach and Gorribal</H1><P><BR/>Aggramar's sword was once part of a larger weapon called Gorshalach (&quot;Dark Render&quot;), which was the most powerful weapon in the universe. Sargeras wielded the mighty blade until his fall, when the weapon, semi-sentient, sundered itself in two halves rather than remain in evil's grasp. All that was good and noble in Sargeras’ former greatsword was left in one half of the shatterbound sword. This half was useless to Sargeras, and remained on the battlefield where it was broken. </P></BODY></HTML>",
				}, -- [18]
				{
					["text1"] = "<HTML><BODY><P>Eventually Aggramar came into possession of the fragment and reforged the blade to wield as his own. Aggramar knows that if he ever unites his half, Taeshalach (&quot;Flame Rend&quot;), with Sargeras's half, Gorribal (&quot;Dark Seether&quot;), Gorshalach will be reborn. He desires this weapon greatly, but has not yet had the courage to confront Sargeras.</P></BODY></HTML>",
				}, -- [19]
				["Type"] = "book",
				["guid"] = "063BC58C_62B0DAA",
				["h2"] = 19,
				["h1"] = 24,
				["type_name"] = "Book",
				["font"] = "Novacut",
				["title"] = "Titanic Legends",
				["details"] = "Titanic Legends",
				["icon"] = "Interface\\ICONS\\INV_Misc_Book_08",
				["material"] = "Parchment",
				["pages"] = 19,
				["n"] = 15,
			}, -- [1]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 4,
		},
		["lastCastTime"] = 1418684439,
		["itemType"] = 1,
		["white1"] = "",
		["name"] = "Titanic Legends",
		["authorName"] = "Avelock",
		["creater"] = "Avelock",
		["copyable"] = false,
		["version"] = 5,
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_645B706"] = {
		["comment"] = "Not bad, if I do say so myself!",
		["guid"] = "063BC58C_645B706",
		["rightClicktext"] = "Read",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\INV_Misc_Book_02",
		["quality"] = 6,
		["stackSize"] = 1,
		["white2"] = "",
		["rightClick"] = {
			{
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"center\">Welcome!</H1><P><BR/><BR/><A href=\"2\">Rules</A><BR/><BR/><BR/><BR/><A href=\"9\">Guide Notes</A></P></BODY></HTML>",
				}, -- [1]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Health Points</H2><P><BR/>Aros Avell: 10 HP<BR/>Isabelle Dawson: 10 HP<BR/>Herisa Rodour: 8 HP<BR/><BR/>When a hero gets to 1/10 HP, &quot;Desperate Measures&quot; is effected, giving +30 to all rolls.<BR/><BR/>When a hero gets to 0/10 HP, &quot;Fainted&quot; status is applied, taking them out of combat until threat is dispatched or group fails.<BR/><BR/><BR/><BR/><BR/><BR/><BR/></P></BODY></HTML>",
				}, -- [2]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Bonuses</H2><P><BR/>Aros Avell: +10 to any spell roll<BR/><BR/>Isabelle Dawson: +10 to any melee roll<BR/><BR/>Herisa Rodour: +10 to any dodge roll<BR/></P></BODY></HTML>",
				}, -- [3]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Cold-Check</H2><P><BR/>Every 30 minutes, roll to see if you have been affected by the cold winds. <BR/><BR/>Unbuffed:             50+ to survive<BR/><BR/>Berryfizz Whisky: 20+ to survive<BR/><BR/>Sliver of Sapphirite: Auto-survive<BR/><BR/>Penalty: -1 HP for every failed roll.<BR/></P></BODY></HTML>",
				}, -- [4]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Campfires</H2><P><BR/>Campfires will be found throughout the expedition.<BR/><BR/>Alternatively, one may choose to light up a campfire if they have Firewood in their Pack. If so, the Firewood is consumed as Aros lights it up for them. These can be put up anywhere outside of combat.<BR/><BR/>Campfire heals 1 HP per minute. <BR/><BR/>For example: if Aros Avell is at 8/10 HP, it would take him 2 minutes to recover to 10/10 HP.</P></BODY></HTML>",
				}, -- [5]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Critical Combat Rolls</H2><P><BR/>Any Roll which is double that required is considered Critical. <BR/><BR/>For example: 40+ roll needed to hit, 80+ will land 2 hits.<BR/><BR/>Any 100 Roll is considered Devastating: 3 hits.</P></BODY></HTML>",
				}, -- [6]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Inventory Packs</H2><P><BR/>Heroes may carry an Inventory Pack which has 4 slots. <BR/><BR/>Heroes can only carry 4 items at a time, including equippable loot.<BR/><BR/>Heroes may share each other's load.<BR/></P></BODY></HTML>",
				}, -- [7]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Unique Items</H2><P><BR/>Unique Loot Items may be found which may or may not apply bonus to specific Hero.<BR/><BR/>These can only be used by designated hero.</P></BODY></HTML>",
				}, -- [8]
				{
					["text1"] = "<HTML><BODY><P></P><H2 align=\"left\">Guide Notes</H2><P><BR/>I would suggest playing with no music on, to get into the ambient of the expedition.<BR/><BR/>Sound for Warcraft should be on (special sound effect at one point).</P></BODY></HTML>",
				}, -- [9]
				{
					["text1"] = "<HTML><BODY><P></P><H1 align=\"left\">Have fun!</H1><P><BR/>I put some effort into this, so I hope you enjoy it :)<BR/></P></BODY></HTML>",
				}, -- [10]
				["Type"] = "book",
				["guid"] = "063BC58C_645B8A1",
				["details"] = "The Northrend Expedition #1",
				["h2"] = 19,
				["h1"] = 24,
				["type_name"] = "Book",
				["font"] = "Metamorphous",
				["title"] = "The Northrend Expedition #1",
				["extraMat"] = "Vellum",
				["icon"] = "Interface\\ICONS\\INV_Misc_Book_08",
				["material"] = "Parchment",
				["pages"] = 10,
				["n"] = 15,
			}, -- [1]
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 5,
		},
		["lastCastTime"] = 1420246651,
		["itemType"] = 1,
		["white1"] = "Rulebook and Guides",
		["version"] = 6,
		["authorName"] = "Avelock",
		["creater"] = "Avelock",
		["copyable"] = false,
		["name"] = "The Northrend Expedition #1",
		["authorGuid"] = "063BC58C",
	},
	["063BC58C_645B16D"] = {
		["comment"] = "A brilliant metallic shard with a thousand facets reflects light as rainbow.",
		["guid"] = "063BC58C_645B16D",
		["rightClicktext"] = "",
		["consumed"] = false,
		["itemComplexity"] = "standard",
		["editable"] = false,
		["icon"] = "Interface\\Icons\\INV_Ingot_Titansteel_blue",
		["quality"] = 5,
		["stackSize"] = 1,
		["white2"] = "",
		["rightClick"] = {
			["cooldown"] = 1,
			["Type"] = "multible",
			["CD"] = 1,
			["version"] = 1,
		},
		["name"] = "Ultrapure Thorium Shard",
		["white1"] = "Unique: Isabelle Dawson",
		["version"] = 2,
		["authorName"] = "Avelock",
		["itemType"] = 1,
		["copyable"] = false,
		["creater"] = "Avelock",
		["authorGuid"] = "063BC58C",
	},
}
GHI_CooldownData = {
}
GHI_MiscData = {
	["allow_camera_move"] = false,
	["BackpackPos"] = {
		322.999970244245, -- [1]
		1054.99998399057, -- [2]
	},
	["block_area_buff"] = false,
	["hide_mod_att_tooltip"] = false,
	["UI_Themes"] = {
		["Current"] = {
			["detailsTextColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["titleBarTextColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["titleBar"] = {
				0.502, -- [1]
				0.102, -- [2]
				0.102, -- [3]
				1, -- [4]
			},
			["mainTextColor"] = {
				1, -- [1]
				0.82, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["name"] = "<New Theme>",
			["background"] = "Interface\\GLUES\\MODELS\\UI_BLOODELF\\bloodelf_mountains.blp",
			["backgroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.502, -- [4]
			},
			["buttonColor"] = {
				0.502, -- [1]
				0.102, -- [2]
				0.102, -- [3]
				1, -- [4]
			},
		},
	},
	["UseMenuAnimation"] = true,
	["target_icon_display_method"] = 1,
	["chatMsgPermission"] = 1,
	["hide_empty_slots"] = false,
	["BuffPos"] = {
		["target"] = {
			447.999978918583, -- [1]
			1038.0000068061, -- [2]
		},
	},
	["no_channel_comm"] = false,
	["SyntaxColor"] = {
		["number"] = {
			0.8, -- [1]
			0.2, -- [2]
			0.8, -- [3]
		},
		["string"] = {
			0.6, -- [1]
			1, -- [2]
			0.6, -- [3]
		},
		["comment"] = {
			1, -- [1]
			0.6, -- [2]
			0.6, -- [3]
		},
		["keyword"] = {
			0.6, -- [1]
			0.6, -- [2]
			1, -- [3]
		},
		["boolean"] = {
			0.5, -- [1]
			0.9, -- [2]
			1, -- [3]
		},
	},
	["block_area_sound"] = false,
	["stick_player_buffs"] = true,
	["stick_target_buffs"] = false,
	["useWideEditor"] = false,
	["tooltip_version"] = true,
	["syntaxDisabled"] = false,
	["soundPermission"] = 1,
	["test"] = "			local stack = stack_063BC58C_6459F6C0696F9D6_645CFA9;\n			local oldDoScript = DoScript;\n			local DoScript = function(s,d) oldDoScript(s,d,\"063BC58C_6459F6C0696F9D6_645CFA9\"); end\n			local oldDoScript = nil;\n			_SetActionAPIItemGuid(stack.GetItemGuid());\n		",
	["WhiteList"] = {
		"", -- [1]
		"", -- [2]
		"", -- [3]
		"", -- [4]
		"", -- [5]
		"", -- [6]
		"", -- [7]
	},
	["show_area_sound_sender"] = false,
	["block_std_emote"] = true,
}
GHI_CS = {
	[29095] = {
	},
	[29579] = {
		["/40>C46@[6336B3@@^c"] = 26485659,
		["0.."] = 9062103,
	},
	[21803] = {
		["/40>C46@[633>3F6"] = 209251059,
		["/40>C46@[6336562"] = 531637461,
		["/40>C46@[633?-6C"] = 338408016,
		["/40>C46@[633?305"] = 65291733,
		["/40>C46@[61@-@42"] = 379254500,
		["/40>C46@[6336B3@"] = 388595031,
		["/40>C46@[63.3,FB"] = 139714506,
	},
	[42536] = {
	},
	[27956] = {
	},
}
GHI_ActionBarData = {
}
GHI_ChatData = nil
GHI_EquipmentDisplayData = {
}

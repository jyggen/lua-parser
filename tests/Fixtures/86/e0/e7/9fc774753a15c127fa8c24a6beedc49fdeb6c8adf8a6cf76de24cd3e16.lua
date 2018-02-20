
SkadaDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["hasUpgraded"] = true,
	["profileKeys"] = {
		["Keestra - Argent Dawn"] = "RealUI",
		["Rëmus - Argent Dawn"] = "RealUI",
		["Rochbert - Argent Dawn"] = "RealUI",
		["Jyggen - Draenor"] = "RealUI",
		["Sîd - Argent Dawn"] = "RealUI",
		["Picaboo - Argent Dawn"] = "RealUI",
		["Real - Zul'jin"] = "RealUI",
		["Velouría - Argent Dawn"] = "RealUI",
		["Isabèllá - Argent Dawn"] = "RealUI",
		["Flöyd - Argent Dawn"] = "RealUI",
		["Thure - Argent Dawn"] = "RealUI",
		["Saelbes - Argent Dawn"] = "RealUI",
		["Blauberry - Argent Dawn"] = "RealUI",
		["Jyggen - Stormscale"] = "RealUI",
	},
	["profiles"] = {
		["RealUI"] = {
			["modeclicks"] = {
				["Healing taken"] = 1,
				["Enemy damage taken"] = 1,
				["Damage taken"] = 1,
				["DPS"] = 2,
			},
			["modules"] = {
				["notankwarnings"] = true,
			},
			["windows"] = {
				{
					["classicons"] = false,
					["barslocked"] = true,
					["hidden"] = true,
					["y"] = 22.5,
					["x"] = -31.99951171875,
					["title"] = {
						["color"] = {
							["a"] = 0,
							["r"] = 0.105882352941177,
							["g"] = 0.105882352941177,
							["b"] = 0.301960784313726,
						},
						["font"] = "pixel_small",
						["fontsize"] = 8,
						["height"] = 17,
						["fontflags"] = "OUTLINEMONOCHROME",
						["texture"] = "Flat",
					},
					["barfontflags"] = "OUTLINEMONOCHROME",
					["point"] = "BOTTOMRIGHT",
					["barbgcolor"] = {
						["a"] = 0,
						["b"] = 0.301960784313726,
						["g"] = 0.301960784313726,
						["r"] = 0.301960784313726,
					},
					["barcolor"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0.0509803921568627,
						["r"] = 0.0509803921568627,
					},
					["barfontsize"] = 8,
					["barorientation"] = 3,
					["mode"] = "DPS",
					["spark"] = false,
					["bartexture"] = "Plain80",
					["barwidth"] = 190,
					["background"] = {
						["height"] = 150,
						["color"] = {
							["a"] = 0,
							["b"] = 0.501960784313726,
						},
					},
					["barfont"] = "pixel_small",
				}, -- [1]
			},
			["icon"] = {
				["hide"] = true,
			},
			["report"] = {
				["channel"] = "instance_chat",
				["mode"] = "Damage taken",
			},
			["columns"] = {
				["Healing_Healing"] = false,
				["Damage_Damage"] = false,
			},
			["hidesolo"] = true,
			["versions"] = {
				["1.6.7"] = true,
				["1.6.3"] = true,
				["1.6.4"] = true,
			},
			["hidedisables"] = false,
			["onlykeepbosses"] = true,
		},
		["Default"] = {
			["modules"] = {
				["notankwarnings"] = true,
			},
			["windows"] = {
				{
					["y"] = -174.498245239258,
					["x"] = 0,
					["barslocked"] = true,
					["set"] = "total",
					["bartexture"] = "Flat",
					["hidden"] = true,
					["point"] = "RIGHT",
				}, -- [1]
			},
			["versions"] = {
				["1.6.3"] = true,
				["1.6.4"] = true,
				["1.6.7"] = true,
			},
			["icon"] = {
				["hide"] = true,
			},
			["onlykeepbosses"] = true,
		},
	},
}

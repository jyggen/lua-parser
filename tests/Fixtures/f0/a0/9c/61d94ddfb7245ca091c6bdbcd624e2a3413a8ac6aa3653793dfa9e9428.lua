
SkadaDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["hasUpgraded"] = true,
	["profileKeys"] = {
		["Keestra - Argent Dawn"] = "RealUI",
		["Rëmus - Argent Dawn"] = "RealUI",
		["Isabèllé - Argent Dawn"] = "RealUI",
		["Jyggen - Stormscale"] = "RealUI",
		["Sîd - Argent Dawn"] = "RealUI",
		["Saelbes - Argent Dawn"] = "RealUI",
		["Thure - Argent Dawn"] = "RealUI",
		["Isabèllá - Argent Dawn"] = "RealUI",
		["Velouría - Argent Dawn"] = "RealUI",
		["Flöyd - Argent Dawn"] = "RealUI",
		["Real - Zul'jin"] = "RealUI",
		["Picaboo - Argent Dawn"] = "RealUI",
		["Rochbert - Argent Dawn"] = "RealUI",
		["Jyggen - Draenor"] = "RealUI",
	},
	["profiles"] = {
		["RealUI"] = {
			["modeclicks"] = {
				["Damage taken"] = 1,
				["Healing taken"] = 1,
				["Enemy damage taken"] = 1,
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
					["barfont"] = "pixel_small",
					["title"] = {
						["color"] = {
							["a"] = 0,
							["b"] = 0.301960784313726,
							["g"] = 0.105882352941177,
							["r"] = 0.105882352941177,
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
						["r"] = 0.301960784313726,
						["g"] = 0.301960784313726,
						["b"] = 0.301960784313726,
					},
					["barcolor"] = {
						["r"] = 0.0509803921568627,
						["g"] = 0.0509803921568627,
						["b"] = 0.0509803921568627,
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
					["x"] = -31.99951171875,
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
				["1.6.4"] = true,
				["1.6.3"] = true,
				["1.6.7"] = true,
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
					["y"] = -174.498321533203,
					["x"] = 0,
					["barslocked"] = true,
					["set"] = "total",
					["point"] = "RIGHT",
					["hidden"] = true,
					["bartexture"] = "Flat",
				}, -- [1]
			},
			["versions"] = {
				["1.6.7"] = true,
				["1.6.4"] = true,
				["1.6.3"] = true,
			},
			["icon"] = {
				["hide"] = true,
			},
			["onlykeepbosses"] = true,
		},
	},
}

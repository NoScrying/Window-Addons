
xivhotbar_keybinds_job['Base'] = {
 -- Hotbar #1
	{'b 1 10', 'ja',  'Shield Bash', 'stnpc', 'Bash'},
 -- Hotbar #2

 -- Hotbar #3
	{'b 2 7', 'ja', 'Cover', 'stpc½', 'Cover'},
	{'b 2 8', 'ja', 'Sentinel', 'me', 'Sentinel'},
 -- Hotbar #4

}

xivhotbar_keybinds_job['Sword'] = {
	-- Battle
	{'b 1 1', 'weaponskill',  'Fast Blade', 'stnpc', 'Fast', 'Sword-Single3'},
	--{'b 1 1', 'weaponskill',  'Savage Blade', 'stnpc', 'Savage', 'Sword-Single3'},
	--{'b 1 2', 'weaponskill',  'Circle Blade', 't', 'AoE', 'Sword-AoE'}, 
}



xivhotbar_keybinds_job['NIN'] = {
	-- Battle
	{'b 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Shadow1', 'UtsuIchi'},
	{'b 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Shadow2', 'UtsuNi'},
	{'f 4 9', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'f 4 10', 'ma', 'Tonko: Ichi', 'me', 'Invis'},
}
xivhotbar_keybinds_job['WAR'] = {
	-- Battle
	{'b 4 7', 'ja', 'Berserk', 'me', 'Berserk', 'Berserk'},
	--{'b 4 8', 'ja', 'Warcry', 'me', 'Warcry', 'Warcry'},
	--{'b 4 9', 'ja', 'Aggressor', 'me', 'Aggr.', 'Agressor'},
	{'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.'},
}

return xivhotbar_keybinds_job

xivhotbar_keybinds_job['Base'] = {
	-- Hotbar #1
	{'b 1 10', 'ja', 'Sic', 'me', 'Sic', 'Sic'},
	{'b 1 5', 'ja', 'Gauge', 't', 'Gauge', 'Gauge'},
	{'b 1 7', 'ja', 'Fight', 'stnpc', 'Atk.', 'fight'},
	{'b 1 8', 'ja', 'Heel', 'me', 'Heel', 'heel'},	

	-- Hotbar #2
	{'b 2 1', 'ja', 'Charm', 'stnpc', 'Charm', 'Dazing_Discharge'},
	{'b 2 9', 'ja', 'Killer Instinct', 'me', 'Killer', "Soulcleave's_Summit"},

	-- Hotbar #3
	{'b 3 1', 'ja', 'Call Beast', 'me', 'Call', 'Call'},
	{'b 3 2', 'ja', 'Bestial Loyalty', 'me', 'Free Call', 'Call2'},
	{'b 3 3', 'ja', 'Leave', 'me', 'Release', 'Release'},
	{'b 3 4', 'ja', 'Snarl', 'me', 'P.Enmity', 'Snarl'},	
	-- Hotbar #4
	{'b 4 1', 'ct', 'bstpet 1', 'me', 'Skill 1', 'BST1'},
	{'b 4 2', 'ct', 'bstpet 2', 'me', 'Skill 2', 'BST2'},
	{'b 4 3', 'ct', 'bstpet 3', 'me', 'Skill 3', 'BST3'},
	{'b 4 4', 'ct', 'bstpet 4', 'me', 'Skill 4', 'BST4'},
	{'b 4 5', 'ct', 'bstpet 5', 'me', 'Skill 5', 'BST5'},
	
	{'b 4 7', 'ja', 'Spur', 'me', 'Spur', 'Spur'},
	{'b 4 8', 'ja', 'Reward', 'me', 'Reward', 'Radiant_Aegis_Icon'},
	{'b 4 10', 'ja', 'Tame', 'stnpc', 'Tame', 'Tame'},
	
	{'f 3 8', 'ja', 'Unleash', 'me', 'Unleash', 'Unleash'},
	{'f 3 9', 'ja', 'Run Wild', 'me', 'Run W.', "BlindingFulgor"},
	{'f 3 10', 'ja', 'Familiar', 'me', 'Famil', 'Familiar'},
}

xivhotbar_keybinds_job['Axe'] = {
	-- Battle

	{'b 1 4', 'weaponskill', 'Calamity', 't', 'Calam.', 'Spinning_Axe'},
	{'b 1 3', 'weaponskill', 'Cloudsplitter', 't', 'Cloud. ', 'Lacerating_Chop'},
	{'b 1 2', 'weaponskill', 'Mistral Axe', 't', 'Mistral.', 'Malicious_Cunning_Salvo'},
	{'b 1 1', 'weaponskill', 'Decimation', 't', 'Decim.', 'Decapitate'},
	{'b 2 2', 'weaponskill', 'Primal Rend', 't', 'P.Rend', 'Core_Cleave'},
}
xivhotbar_keybinds_job['Sword'] = {
	-- Battle
	{'b 1 1', 'weaponskill',  'Savage Blade', 'stnpc', 'Savge', 'Imperator'}, 
	
	{'b 1 2', 'weaponskill',  'Circle Blade', 't', 'AoE', 'Sword-AoE'},

}
xivhotbar_keybinds_job['NIN'] = {
	-- Battle
	{'f 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Shadow1', 'UtsuIchi'},
	{'f 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Shadow2', 'UtsuNi'},
	{'f 4 9', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'f 4 10', 'ma', 'Tonko: Ni', 'me', 'Invis'},
	
}

xivhotbar_keybinds_job['WAR'] = {
	-- Battle
	{'b 2 7', 'ja', 'Berserk', 'me', 'Berserk', 'Berserk'},
	{'b 2 8', 'ja', 'Warcry', 'me', 'Warcry', 'Warcry'},

}

xivhotbar_keybinds_job['DNC'] = {
	-- Battle
		{'b 4 10', 'ja', 'Reverse Flourish', 'me', 'Rvrs', 'Reverse'},
		{'b 4 6', 'ja', 'Quickstep', 't', 'Evas.', 'Box'},
		{'b 4 7', 'ja', 'Desperate Flourish', 't', 'Gravity', 'Feather'},
		{'b 4 9', 'ja', 'Spectral Jig', 'me', 'Spctrl', 'Spectral'},
		{'b 1 9', 'ja', 'Haste Samba', 'me', 'Haste', 'Haste'},
		{'b 3 5', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
		{'b 3 4', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'CureIII'},
		{'b 3 6', 'ja', 'Healing Waltz', 'stpc', 'Erase', 'Esuna'},
			
}

xivhotbar_keybinds_job['THF'] = {
    {'b 4 6', 'ja', 'Flee', 'me', 'Flee', 'Flee'},
    {'b 4 7',  'ja', 'Sneak Attack', 'me', 'Snk. Atk', 'snkatk'},
    {'b 4 8',  'ja', 'Trick Attack', 'me', 'Trk. Atk', 'Innin'},
	{'b 4 10', 'ja', 'Hide', 'me', 'Hide', 'Hide'},
}
return xivhotbar_keybinds_job
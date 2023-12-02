
xivhotbar_keybinds_job['Base'] = {
 -- Hotbar #1
	{'b 1 8', 'ja', 'Striking Flourish', 'me', 'DA+1', "StrikingFlourish"},
	{'b 1 7', 'ja', 'Climactic Flourish', 'me', 'Crit+1', 'Ternary'},
	{'b 1 9', 'ja', 'No Foot Rise', 'me', 'Finish', "Flourish"},
	{'b 1 10', 'ja', 'Presto', 'me', 'Step+', 'Presto'},

 -- Hotbar #2
	{'b 2 3', 'ja', 'Violent Flourish', 't', 'Stun'},

	{'b 2 10', 'ja', 'Chocobo Jig II', 'me', 'Choco', 'Chocobo'},
	{'b 4 9', 'ja', 'Spectral Jig', 'me', 'Spectral', 'Spectral'},	
 -- Hotbar #3
    {'b 3 1', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'WaltzIII'},
    {'b 3 2', 'ja', 'Curing Waltz IV', 'stpc', 'CureIV', 'WaltzIV'},
	{'b 3 3', 'ja', 'Curing Waltz V', 'stpc', 'CureV', 'WaltzV'},
	{'b 3 4', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
	{'b 3 5', 'ja', 'Divine Waltz II', 'stpc', 'Curaga', 'Divine2'},
	{'b 3 6', 'ja', 'Healing Waltz', 'me', 'Esuna', 'HealingWaltz'},
    {'b 3 8', 'ct', 'ra', 't', 'RA', 'Ranged'},
	{'b 3 7', 'ja', 'Reverse Flourish', 'me', 'Reverse', 'Reverse'},
 -- Hotbar #4
    {'b 2 1', 'ja', 'Drain Samba III', 'me', 'Drain', 'Drain'},
    {'b 2 2', 'ja', 'Haste Samba', 'me', 'Haste', 'Haste'},
	{'b 4 1', 'ja', 'Box Step', 't', 'Box', 'Box'},
	{'b 4 2', 'ja', 'Feather Step', 't', 'Crit+', 'Feather'},
	{'b 4 3', 'ja', 'Stutter Step', 't', 'MEVA-', "Stutter"},
	{'b 4 7', 'ja', 'Saber Dance', 'me', 'Double'},
	{'b 4 8', 'ja', 'Fan Dance', 'me', 'DEF'},
	{'b 4 10', 'ja', 'Contradance', 'me', 'Heal+', "Halation"},
	
 -- Hotbar #6
}
xivhotbar_keybinds_job['Dagger'] = {
	-- Battle
	{'b 1 1', 'weaponskill', "Rudra's Storm", 'stnpc', 'Rudra', 'Dagger-Single3'},
    {'b 1 2', 'weaponskill', 'Pyrrhic Kleos', 't', 'Pyrrhic.', 'Dagger-Single'},
    {'b 1 3', 'weaponskill', 'Evisceration', 't', 'Evisc.', 'Dagger-Multi'},
	{'b 1 4', 'weaponskill', 'Aeolian Edge', 't', 'Aeolian.', 'Dagger-AoE'},
    {'b 2 4', 'weaponskill', 'Shark Bite', 't', 'Shark.', "Dagger-Single2"},
}
xivhotbar_keybinds_job['WAR'] = {
    {'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.'},
    {'b 2 7',  'ja', 'Berserk', 'me', 'Berserk', 'Berserk'},
    {'b 2 8',  'ja', 'Warcry', 'me', 'War.', 'Warcry'},
	{'b 2 9', 'ja', 'Aggressor', 'me', 'Aggr.', 'Agressor'},
}
xivhotbar_keybinds_job['THF'] = {
    {'b 4 8', 'ja', 'Flee', 'me', 'Flee', 'Flee'},
    {'b 2 7',  'ja', 'Sneak Attack', 'me', 'Snk. Atk', 'snkatk'},
    {'b 2 8',  'ja', 'Trick Attack', 'me', 'Trk. Atk', 'Innin'},
	{'b 2 10', 'ja', 'Hide', 'me', 'Hide', 'Hide'},
}
xivhotbar_keybinds_job['DRG'] = {
    {'b 2 1', 'ja', 'Jump', 't', 'Jump', 'Jump'},
    {'b 2 2',  'ja', 'High Jump', 't', 'H. Jump', 'Hjump'},

}
xivhotbar_keybinds_job['SAM'] = {
	{'b 4 4', 'ja', 'Warding Circle', 'me', 'Circle'},
    {'b 4 5',  'ja', 'Sekkanoki', 'me', 'Sek.', 'Sekkanoki'},
    {'b 4 6',  'ja', 'Meditate', 'me', 'Med.', 'Meditate'},
	{'b 2 6',  'ja', 'Third Eye', 'me', 'Third.', 'Third'},
}
xivhotbar_keybinds_job['COR'] = {
	{'f 1 1', 'ja', 'Fighter\'s Roll', 'me', 'Dbl. Atk', 'Roll5'},
	{'f 1 2', 'ja', 'Samurai Roll', 'me', 'St. TP', 'Roll2'},
	{'f 1 3', 'ja', 'Chaos Roll', 'me', 'ATK', 'Roll4'},
	{'f 1 4', 'ja', 'Hunter\'s Roll', 'me', 'Acc', 'Roll4'},
	{'f 1 5', 'ja', 'Wizard\'s Roll', 'me', 'M.Atk.', 'Roll5'},
	{'f 1 6', 'ja', 'Evoker\'s Roll', 'me', 'Refresh', 'Roll5'},
	{'f 1 7', 'ja', 'Corsair\'s Roll', 'me', 'EXP', 'Roll5'},
	{'f 1 10', 'ja', 'Double-Up', 'me', 'Double'},
}
return xivhotbar_keybinds_job

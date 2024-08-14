
xivhotbar_keybinds_job['Base'] = {
 -- Hotbar #1
	{'b 1 5', 'ja', 'Animated Flourish', 'stnpc', 'Provoke'},
	{'b 1 8', 'ja', 'Striking Flourish', 'me', 'DA+1', "Striking"},
	{'b 1 7', 'ja', 'Climactic Flourish', 'me', 'Crit+1', 'Ternary'},
	{'b 1 6', 'input', "//cancel Saber Dance,Fan Dance", '', 'DA Off', "SaberDanceOff"},
	{'b 1 9', 'ja', 'No Foot Rise', 'me', 'Finish', "Flourish"},
	{'b 1 10', 'ja', 'Presto', 'me', 'Step+', 'Presto'},

 -- Hotbar #2
	{'b 2 3', 'ja', 'Violent Flourish', 't', 'Stun', "Stun"},

	{'b 2 10', 'ja', 'Chocobo Jig II', 'me', 'Choco', 'Chocobo'},
	{'b 4 9', 'ja', 'Spectral Jig', 'me', 'Spctrl', 'Spectral'},	
 -- Hotbar #3
    {'b 3 1', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'WaltzIII'},
    {'b 3 2', 'ja', 'Curing Waltz IV', 'stpc', 'CureIV', 'WaltzIV'},
	{'b 3 3', 'ja', 'Curing Waltz V', 'stpc', 'CureV', 'WaltzV'},
	{'b 3 4', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
	{'b 3 5', 'ja', 'Divine Waltz II', 'stpc', 'Curaga', 'Divine2'},
	{'b 3 6', 'ja', 'Healing Waltz', 'stpc', 'Esuna', 'HealingWaltz'},
	{'b 3 7', 'ja', 'Reverse Flourish', 'me', 'Rvrs', 'Reverse'},
	{'b 3 8', 'ja', 'Building Flourish', 'me', 'WS+', 'BuildingFlourish'},
	
	{'f 3 9', 'ja', 'Trance', 'me', 'TP+',},
	{'f 3 10', 'ja', 'Grand Pas', 'me', 'Flourish+',},
 -- Hotbar #4
    {'b 2 1', 'ja', 'Drain Samba III', 'me', 'Drain', 'Drain'},
    {'b 2 2', 'ja', 'Haste Samba', 'me', 'Haste', 'HasteSamba'},
	{'b 4 1', 'ja', 'Box Step', 't', 'Box', 'Box'},
	{'b 4 2', 'ja', 'Feather Step', 't', 'Crit+', 'Feather'},
	{'b 4 3', 'ja', 'Stutter Step', 't', 'MEVA-', "Stutter"},
	{'b 4 4', 'ja', 'Quickstep', 't', 'EVA-', "QuickStep"},
	{'b 4 7', 'ja', 'Saber Dance', 'me', 'DA On', "SaberDance"},
	{'b 4 8', 'ja', 'Fan Dance', 'me', 'DEF', "FanDance"},
	{'b 4 10', 'ja', 'Contradance', 'me', 'Heal+', "CuringWaltz"},
	
 -- Hotbar #6
}
xivhotbar_keybinds_job['Dagger'] = {
	-- Battle
	{'b 1 1', 'weaponskill', "Rudra's Storm", 'stnpc', 'Rudra', 'Zesho'},
    {'b 1 2', 'weaponskill', 'Pyrrhic Kleos', 't', 'Pyrrhic.', 'Dagger-Single2'},
    {'b 1 3', 'weaponskill', 'Evisceration', 't', 'Evisc.', 'Dagger-Multi'},
	{'b 1 4', 'weaponskill', 'Aeolian Edge', 't', 'Aeolian.', 'Dagger-AoE'},
    {'b 2 4', 'weaponskill', 'Shark Bite', 't', 'Shark.', "Dagger-Single2"},
    {'b 2 5', 'weaponskill', 'Exenterator', 't', 'Exent.', "Dagger-Single4"},
}
xivhotbar_keybinds_job['Hand-to-hand'] = {
{'b 1 1', 'weaponskill', 'Tornado Kick', 't', 'T.Kick', 'H2H-Kick'},
{'b 1 4', 'weaponskill', 'Spinning Attack', 't', 'AoE', 'H2H-AoE'},
{'b 1 3', 'weaponskill', 'Asuran Fists', 't', 'Asura', 'H2H-Multi'},
{'b 1 2', 'weaponskill', 'Raging Fists', 't', 'Rage', 'H2H-Single4'},
}

xivhotbar_keybinds_job['WAR'] = {
    {'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.'},
    {'b 2 7',  'ja', 'Berserk', 'me', 'Brsrk', 'Berserk'},
    {'b 2 8',  'ja', 'Warcry', 'me', 'War.', 'Warcry'},
	{'b 2 9', 'ja', 'Aggressor', 'me', 'Aggr.', 'Agressor'},
}
xivhotbar_keybinds_job['MNK'] = {
    {'b 2 4',  'ja', 'Chi Blast', 'stnpc', 'Chi.'},
    {'b 2 7',  'ja', 'Focus', 'me', 'Focus'},
    {'b 2 8',  'ja', 'Dodge', 'me', 'Dodge.'},
	{'b 2 9', 'ja', 'Counterstance', 'me', 'Cnter.'},
	{'b 1 6', 'ja', 'Chakra', 'me', 'Chakra.'},
}
xivhotbar_keybinds_job['NIN'] = {
	-- Battle
	{'b 4 4', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu', 'UtsuIchi'},
	{'b 4 5', 'ma', 'Utsusemi: Ni', 'me', 'Utsu', 'UtsuNi'},
}
xivhotbar_keybinds_job['THF'] = {
    {'b 4 8', 'ja', 'Flee', 'me', 'Flee', 'Flee'},
    {'b 2 7',  'ja', 'Sneak Attack', 'me', 'Snk.Atk', 'snkatk'},
    {'b 2 8',  'ja', 'Trick Attack', 'me', 'Trk.Atk', 'Innin'},
	{'b 2 10', 'ja', 'Hide', 'me', 'Hide', 'Hide'},
}
xivhotbar_keybinds_job['DRG'] = {
	{'b 2 7',  'ja', 'Jump', 't', 'Jump', 'Jump'},
	{'b 2 8',  'ja', 'High Jump', 't', 'H. Jump', 'High Jump'},
	{'b 2 9',  'ja', 'Super Jump', 't', 'Enmity-', 'Super Jump'},
	{'b 4 5',  'ja', 'Ancient Circle', 'me', 'DRG.Circ'},
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

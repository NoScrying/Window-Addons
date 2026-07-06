xivhotbar_keybinds_job['Base'] = {
  -- Hotbar #1
	{'b 1 10',  'ja', 'Call Wyvern', 'me', 'Wyvern', 'Wyvern'},
	{'b 1 8',  'ja', 'Super Jump', 't', 'Enmity-', 'Super Jump'},
	{'b 1 9',  'ja', 'Spirit link', 'me', 'Link', 'Spirit Link'},
	{'b 1 5',  'ja', 'Angon', 't', 'Angon', 'Angon'},
	{'f 3 9',  'ja', 'Spirit Surge', 'me', 'Surge'},
	{'f 3 10',  'ja', 'Fly High', 'me', 'Fly High'},
  -- Hotbar #2
	{'b 2 10',  'ja', 'Spirit Bond', 'me', 'Bond', 'Spirit Bond'},

  -- Hotbar #3
	{'b 3 1',  'ja', 'Smiting Breath', 't', 'Smite', 'Qiyana_Terrashape_Rock_HD'},
	{'b 3 2',  'ja', 'Restoring Breath', 'me', 'Heal', 'Qiyana_Terrashape_Brush_HD'},
		{'b 3 3',  'ja', 'Steady Wing', 'me', 'Stoneskin', 'Qiyana_Terrashape_HD'},
		
  -- Hotbar #4
	{'b 4 1',  'ja', 'Jump', 't', 'Jump', 'Jump'},
	{'b 4 2',  'ja', 'High Jump', 't', 'H.Jump', 'High Jump'},
	{'b 4 3',  'ja', 'Spirit Jump', 't', 'Spirit.J', 'Spirit Jump'},
	{'b 4 4',  'ja', 'Soul Jump', 't', 'Soul.J', 'Soul Jump'},
	{'b 4 7',  'ja', 'Ancient Circle', 'me', 'Circle', 'tile681'},
	{'b 4 8',  'ja', 'Dragon Breaker', 'me', 'Dragon', 'tile322'},
	
	{'b 6 6',  'input', '//exec Generic_Attack_Buffs.txt', 'me', 'Alt Buffs','Tome_of_Justice'},
    {'b 6 2',  'input', '//send Nolyte //exec CuragaIII_DivineWaltz', 'me', 'CuraIII','Searing_Light'},
    {'b 6 3',  'input', '//send Nolyte //exec CureIV_CuringWaltz', 'me', 'CureIV','tile792'},
    {'b 6 1',  'input', '//send Nolyte //Dia2', 't', 'Dia2',"Kayle_Divine_Ascent_HD"},
    {'b 6 5',  'input', '//send Nolyte /DivineSeal', 'me', 'D.Seal', 'Chapter_2-_Radiant_Recovery'},
    {'b 6 4',  'input', '//send Nolyte /ma "Horde Lullaby" <bt>', 'me', 'Horde', 'tile448'},
    {'b 6 7',  'input', '//send Nolyte /ma "Carnage Elegy" <bt>', 'me', 'Elegy', 'tile075'},
    {'b 6 10',  'input', '//send Nolyte /ma "Pining Nocturne" <bt>', 'me', 'Nocturne', 'tile170'},
    {'b 6 8',  'input', '//send Nolyte /ma "Magic Finale" <bt>', 'me', 'Dispel', 'tile877'},
    {'b 6 9',  'input', '//send Nolyte /ma "Horde Lullaby II" <bt>', 'me', 'Horde II', 'tile250(2)'},
}

xivhotbar_keybinds_job['Polearm'] = {
	-- Battle
	{'b 1 1', 'weaponskill',  'Stardiver', 'stnpc', 'Stardiver', 'Stardiver'},
	{'b 1 2', 'weaponskill',  'Camlann\'s Torment', 't', 'Torment', 'Camlann'}, 
	{'b 1 3', 'weaponskill',  'Sonic Thrust', 't', 'Sonic', 'Sonic'},
	{'b 1 4', 'weaponskill',  'Leg Sweep', 't', 'Stun', 'Leg_Sweep'},	
	{'b 2 1', 'weaponskill',  'Impulse Drive', 't', 'Impulse', 'Impulse'},
	{'b 2 2', 'weaponskill',  'Wheeling Thrust', 't', 'Wheeling', 'Wheeling'}, 
	{'b 2 3', 'weaponskill',  'Drakesbane', 't', 'Drake', 'Drake'},
}

xivhotbar_keybinds_job['Sword'] = {
	-- Battle
	{'b 1 1', 'weaponskill',  'Savage Blade', 'stnpc', 'Savage', 'Sword-Single3'}, 
	{'b 1 2', 'weaponskill',  'Circle Blade', 't', 'AoE', 'Sword-AoE'}, 
}
xivhotbar_keybinds_job['NIN'] = {
	-- Battle
	{'f 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Shadow1', 'UtsuIchi'},
	{'f 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Shadow2', 'UtsuNi'},
	{'f 4 9', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'f 4 10', 'ma', 'Tonko: Ichi', 'me', 'Invis'},
	
}
xivhotbar_keybinds_job['THF'] = {
    {'b 2 9',  'ja', 'Flee', 'me', 'Flee', 'Flee'},
    {'b 2 7',  'ja', 'Sneak Attack', 'me', 'Snk. Atk', 'snkatk'},
    {'b 2 8',  'ja', 'Trick Attack', 'me', 'Trk. Atk', 'Innin'},
	{'b 2 10', 'ja', 'Hide', 'me', 'Hide', 'Hide'},
	 {'f 2 1',  'ja', 'Steal', 't', 'Steal'},
}
xivhotbar_keybinds_job['WAR'] = {
	-- Battle
	{'b 2 7', 'ja', 'Berserk', 'me', 'Berserk', 'Berserk'},
	{'b 2 8', 'ja', 'Warcry', 'me', 'Warcry', 'Warcry'},
	{'b 2 9', 'ja', 'Aggressor', 'me', 'Aggr.', 'Agressor'},
	{'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.',"tile150"},
}
xivhotbar_keybinds_job['DNC'] = {
	-- Battle
    {'f 4 1', 'ja', 'Drain Samba II', 'me', 'Drain II', 'Drain'},
	{'f 4 2', 'ja', 'Box Step', 't', 'Box', 'Box'},
    {'f 4 3', 'ja', 'Haste Samba', 'me', 'Haste', 'Haste'},

		{'f 3 10', 'ja', 'Reverse Flourish', 'me', 'Rvrs', 'Reverse'},
		{'f 4 4', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
		{'f 4 5', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'CureIII'},
		{'f 4 6', 'ja', 'Healing Waltz', 'stpc', 'Erase', 'Esuna'},
		{'f 4 10', 'ja', 'Spectral Jig', 'me', 'Spctrl', 'Spectral'},
}
xivhotbar_keybinds_job['SAM'] = {
    {'b 4 10',  'ja', 'Hasso', 'me', 'Has.', 'Dragon_Trigger'},
    {'b 3 7',  'ja', 'Meditate', 'me', 'Med.', 'Meditate'},
    {'b 3 8',  'ja', 'Sekkanoki', 'me', 'Sek.', 'Sekkanoki'},
	{'b 2 6',  'ja', 'Third Eye', 'me', 'Third.', 'Third'},
	{'b 1 6',  'ja', 'Seigan', 'me', 'Seigan', 'Seigan'},
}

xivhotbar_keybinds_job['COR'] = {
	{'f 1 1', 'ja', 'Fighter\'s Roll', 'me', 'Dbl. Atk', 'Roll5'},
	{'f 1 2', 'ja', 'Samurai Roll', 'me', 'St. TP', 'Roll2'},
	{'f 1 3', 'ja', 'Chaos Roll', 'me', 'ATK', 'Roll4'},
	{'f 1 4', 'ja', 'Hunter\'s Roll', 'me', 'Acc', 'Roll4'},
	{'f 1 5', 'ja', 'Beast Roll', 'me', 'Pet ATK', 'Roll5'},
	{'f 1 6', 'ja', 'Evoker\'s Roll', 'me', 'Refresh', 'Roll5'},
	{'f 1 10', 'ja', 'Double-Up', 'me', 'Double'},
}
xivhotbar_keybinds_job['RDM'] = {
	{'f 1 9', 'ma', 'Phalanx', 'me', 'Phalanx', 'Stoneskin'},
	{'b 2 7', 'ma', 'Phalanx', 'me', 'Phalanx', 'Stoneskin'},
	{'f 4 1', 'ma', 'Stone', 't', 'Stone',"Stoning"},
	{'b 1 7', 'ma', 'Stone', 't', 'Stone',"Stoning"},
	{'f 4 2', 'ma', 'Water', 't', 'Water',"Tidal_Surge"},
	{'f 4 3', 'ma', 'Aero', 't', 'Aero',"Tornado(2)"},
	{'f 1 10', 'ja', 'Convert', 'me', 'Convert',"tile813"},
	{'f 2 3', 'ma', 'Refresh', 'stpc', 'Refresh',"tile617"},
	{'b 3 7', 'ma', 'Refresh', 'stpc', 'Refresh',"tile617"},
	{'f 2 7', 'ma', 'Haste', 'stpc', 'Haste',"_Advance!_"},
	{'b 2 8', 'ma', 'Haste', 'stpc', 'Haste',"_Advance!_"},
	{'f 2 1', 'ma', 'Diaga', 't', 'Diaga'},
	{'f 2 2', 'ma', 'Dia II', 't', 'Dia II', 'tile455'},
	{'f 2 8', 'ma', 'Stoneskin', 'me', 'Stnskin',"tile639"},
	{'f 4 8', 'ma', 'Enfire', 'me', 'En-Ele',"Kayle_Divine_Ascent_HD"},

	{'f 3 1', 'ma', 'Protect III', 'me', 'Protect',"tile462"},
	{'f 3 2', 'ma', 'Shell II', 'me', 'Shell',"tile497"},	
	{'f 4 9', 'ma', 'Sneak', 'me', 'Sneak',"tile019"},
	{'f 4 10', 'ma', 'Invisible', 'stpc', 'Invis',"tile086"},	
	{'f 2 5', 'ma', 'Ice Spikes', 'me', 'Spikes',"tile385"},
}
xivhotbar_keybinds_job['BLU'] = {
    {'b 1 7',  'ma', 'Foot Kick', 't', "Cure", 'BLU-cure'},
    {'b 2 7',  'ma', 'Refueling', 'me', 'Haste', "_Advance!_"},

}
return xivhotbar_keybinds_job
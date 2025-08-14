
xivhotbar_keybinds_job['Base'] = {
 -- Hotbar #1
	{'b 1 5', 'ja', 'Animated Flourish', 'stnpc', 'Provoke',"tile150"},
	{'b 1 8', 'ja', 'Striking Flourish', 'me', 'DA+1', "Unstable_Bladestorm"},
	{'b 1 7', 'ja', 'Climactic Flourish', 'me', 'Crit+1', 'Bladesong_Harmony'},
	{'b 1 6', 'input', "//cancel Saber Dance,Fan Dance", '', 'DA Off', "Awakening"},
	{'b 1 9', 'ja', 'No Foot Rise', 'me', 'Finish', "Flourish"},
	{'b 1 10', 'ja', 'Presto', 'me', 'Step+', 'Presto'},

 -- Hotbar #2
	{'b 2 3', 'ja', 'Violent Flourish', 't', 'Stun', "Reflexive_Strike"},

	{'b 2 10', 'ja', 'Chocobo Jig II', 'me', 'Choco', 'Overwhelming_Celerity'},
	{'b 4 9', 'ja', 'Spectral Jig', 'me', 'Spctrl', 'Smoke_Screen'},	
 -- Hotbar #3
    {'b 3 1', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'WaltzIII'},
    {'b 3 2', 'ja', 'Curing Waltz IV', 'stpc', 'CureIV', 'WaltzIV'},
	{'b 3 3', 'ja', 'Curing Waltz V', 'stpc', 'CureV', 'WaltzV'},
	{'b 3 4', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
	{'b 3 5', 'ja', 'Divine Waltz II', 'stpc', 'Curaga', 'Divine2'},
	{'b 3 6', 'ja', 'Healing Waltz', 'stpc', 'Esuna', 'HealingWaltz'},
	{'b 3 7', 'ja', 'Reverse Flourish', 'me', 'Rvrse', 'Reverse'},
	{'b 3 8', 'ja', 'Building Flourish', 'me', 'WS+', 'BuildingFlourish'},
	{'b 3 9', 'ja', 'Ternary Flourish', 'me', 'TA+1', 'Plasma_Burst'},	
	{'f 3 9', 'ja', 'Trance', 'me', 'TP+',"tile972"},
	{'f 3 10', 'ja', 'Grand Pas', 'me', 'Flourish+',"tile711"},
 -- Hotbar #4
    {'b 2 1', 'ja', 'Drain Samba III', 'me', 'Drain', 'Death_Curse'},
    {'b 2 2', 'ja', 'Haste Samba', 'me', 'Haste', 'HasteSamba'},
	{'b 4 1', 'ja', 'Box Step', 't', 'Box', 'Qiyana_Terrashape_Rock_HD'},
	{'b 4 2', 'ja', 'Feather Step', 't', 'Crit+', 'Qiyana_Terrashape_River_HD'},
	{'b 4 3', 'ja', 'Stutter Step', 't', 'MEVA-', "Qiyana_Terrashape_Brush_HD"},
	{'b 4 4', 'ja', 'Quickstep', 't', 'EVA-', "Qiyana_Terrashape_HD"},
	{'b 4 7', 'ja', 'Saber Dance', 'me', 'DA On', "Pyro_Vortex"},
	{'b 4 8', 'ja', 'Fan Dance', 'me', 'DEF', "Symbol_of_Swiftness"},
	{'b 4 10', 'ja', 'Contradance', 'me', 'Heal+', "CuringWaltz"},
	
 -- Hotbar #6
	{'b 6 6',  'input', '//send Nolyte //exec Valor_Valor_Victory', 'me', 'VVV','Tome_of_Justice'},
    {'b 6 2',  'input', '//send Nolyte //exec CuragaIII_DivineWaltz', 'me', 'CuraIII','Searing_Light'},
    {'b 6 3',  'input', '//send Nolyte //exec CureIV_CuringWaltz', 'me', 'CureIV','tile792'},
    {'b 6 5',  'input', '//send Nolyte //exec Marcato_NiTro.txt', 'me', 'NiTro',"Kayle_Divine_Ascent_HD"},
    {'b 6 1',  'input', '//send Nolyte /ma "Auspice" <me>', 'me', 'Auspice', 'Chapter_2-_Radiant_Recovery'},
    {'b 6 4',  'input', '//send Nolyte //exec Regen.txt', 'me', 'RegenIV', 'tile025'},
    {'b 6 7',  'input', '//send Nolyte /ma "Carnage Elegy" <bt>', 'me', 'Elegy', 'tile075'},
    {'b 6 10',  'input', '//send Nolyte /ma "Pining Nocturne" <bt>', 'me', 'Nocturne', 'tile170'},
    {'b 6 8',  'input', '//send Nolyte /ma "Magic Finale" <bt>', 'me', 'Dispel', 'tile877'},
    {'b 6 9',  'input', '//send Nolyte /ma "Horde Lullaby II" <bt>', 'me', 'Sleepga', 'tile250(2)'},
}
xivhotbar_keybinds_job['Dagger'] = {
	-- Battle
	{'b 1 1', 'weaponskill', "Rudra's Storm", 'stnpc', 'Rudra', 'Zesho'},
    {'b 1 2', 'weaponskill', 'Pyrrhic Kleos', 'stnpc', 'Pyrrhic.', 'Dagger-Single2'},
    {'b 1 3', 'weaponskill', 'Evisceration', 'stnpc', 'Evisc.', 'Dagger-Multi'},
	{'b 1 4', 'weaponskill', 'Aeolian Edge', 't', 'Aeolian.', 'Dagger-AoE'},
    {'b 2 4', 'weaponskill', 'Shark Bite', 't', 'Shark.', "Sharkbite"},
    {'b 2 5', 'weaponskill', 'Exenterator', 't', 'Exent.', "Exenterator"},
    {'b 2 6', 'weaponskill', 'Dancing Edge', 't', 'Dance.', "Dancing Edge"},
}
xivhotbar_keybinds_job['Hand-to-hand'] = {
{'b 1 1', 'weaponskill', 'Tornado Kick', 'stnpc', 'T.Kick', 'H2H-Kick'},
{'b 1 4', 'weaponskill', 'Spinning Attack', 't', 'AoE', 'H2H-AoE'},
{'b 1 3', 'weaponskill', 'Asuran Fists', 'stnpc', 'Asura', 'H2H-Multi'},
{'b 1 2', 'weaponskill', 'Raging Fists', 'stnpc', 'Rage', 'H2H-Single4'},
}

xivhotbar_keybinds_job['WAR'] = {
    {'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.',"tile150"},
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
	{'f 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu', 'UtsuIchi'},
	{'f 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Utsu', 'UtsuNi'},
	{'f 4 9', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'f 4 10', 'ma', 'Tonko: Ni', 'me', 'Invis'},
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
	{'b 4 5',  'ja', 'Ancient Circle', 'me', 'DRG.Circ',"Rise_of_the_Dragon"},
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
xivhotbar_keybinds_job['RDM'] = {
	{'f 1 9', 'ma', 'Phalanx', 'me', 'Phalnx', "Phalanx"},
	{'f 1 8', 'ma', 'Dispel', 't', 'Dspel','tile877'},
	
	{'f 1 1', 'ma', 'Stone II', 't', 'Stone',"tile031"},
	{'f 1 2', 'ma', 'Water II', 't', 'Water',"tile085"},
	{'f 1 3', 'ma', 'Aero II', 't', 'Aero',"tile056"},
	{'f 1 4', 'ma', 'Fire II', 't', 'Fire',"tile054"},
	{'f 1 5', 'ma', 'Blizzard II', 't', 'Bliz.',"tile053"},
	{'f 1 6', 'ma', 'Thunder II', 't', 'Thund.',"tile055"},
	
	{'f 1 10', 'ja', 'Convert', 'me', 'Convert',"tile813"},

	{'f 2 1', 'ma', 'Dia II', 'stnpc', 'Dia',"tile455"},
	{'f 2 2', 'ma', 'Paralyze', 'stnpc', 'Para',"tile827"},
	{'f 2 3', 'ma', 'Slow', 'stnpc', 'Slow',"tile075"},
	{'f 2 4', 'ma', 'Distract', 'stnpc', 'Eva-',"tile007"},
	{'f 2 5', 'ma', 'Frazzle', 'stnpc', 'M.Eva-3',"tile700"},
	{'f 2 6', 'ma', 'Gravity', 'stnpc', 'Grav',"tile299"},
  	--{'b 3 1', 'ma', 'Cure IV', 'stpc', 'CureIV',"tile792"},
	{'f 3 2', 'ma', 'Regen II', 'stpc', 'Rgen',"tile638"},
  	{'f 3 3', 'ma', 'Refresh', 'stpc', 'Refrsh',"tile617"},
	{'f 3 5', 'ma', 'Stoneskin', 'me', 'StnSkn',"tile639"},
	{'f 3 6', 'ma', 'Aquaveil', 'me', 'Veil',"tile630"},	
	{'f 3 7', 'ma', 'Barparalyze', 'me', 'B.Para',"tile821"},	
	{'f 3 8', 'ma', 'Barblizzard', 'me', 'B.Ice',"tile822"},	
	{'f 3 9', 'ma', 'Silence', 'stnpc', 'Slnce',"tile277"},

  -- Hotbar #4
 	{'f 4 1', 'ma', 'Cure III', 'stpc', 'CureIII',"tile078"},
	{'f 4 2', 'ma', 'Raise II', 'stpc', 'Raise',"tile844"},
	{'f 4 3', 'ma', 'Haste', 'stpc', 'Haste',"_Advance!_"},
	--{'f 4 4', 'ma', 'Flurry II', 'stpc', 'Flurry',"tile004"},
	{'f 4 5', 'ma', 'Protect III', 'stpc', 'Protct',"tile462"},
	{'f 4 6', 'ma', 'Shell III', 'stpc', 'Shell',"tile497"},
	---{'f 4 7', 'ma', 'Temper II', 'me', 'Tri-ATK',"tile933"},
	{'f 4 8', 'ma', 'Enthunder', 'me', 'En-Ele',"Kayle_Divine_Ascent_HD"},
	--{'f 4 9', 'ja', 'Composure', 'me', 'Comp.',"Kayle_Celestial_Blessing_HD"},
	{'f 4 10', 'ma', 'Blink', 'me', 'Blink',"tile191"},	
}
xivhotbar_keybinds_job['BLM'] = {
	{'f 4 10', 'ja', 'Elemental Seal', 'me', 'E.Seal'},
	{'f 4 8', 'ma', 'Warp', 'me', 'Warp'},
 	{'f 4 9', 'ma', 'Warp II', 'stpc', 'WarpII'},
 	{'f 2 10', 'ma', 'Escape', 'me', 'Esc'},
 	{'f 4 4', 'ma', 'Sleepga', 't', 'Slpga'},
 	{'f 4 1', 'ma', 'Stone III', 't', 'Stone'},
 	{'f 4 2', 'ma', 'Firaga II', 't', 'Firga'},
 	{'f 4 3', 'ma', 'Burst', 't', 'Burst'},
	{'f 2 9', 'ma', 'Ice Spikes', 'me', 'Ice'},
	{'f 2 1', 'ma', 'Poisonga', 't', 'Psnga', "Spider_Venom"},
	{'f 2 3', 'ma', 'Poison II', 't', 'Psn'},	
	{'f 3 2', 'ma', 'Choke', 't', 'Choke'},	
	{'f 3 4', 'ma', 'Bio II', 't', 'Bio'},	
	{'f 3 3', 'ma', 'Burn', 't', 'Burn'},	
	{'f 3 1', 'ma', 'Shock', 't', 'Shock'},	
	{'f 1 10', 'ma', 'Stun', 't', 'Stun',"tile959"},		
	{'f 1 8', 'ma', 'Sleep II', 't', 'SlpII'},	
	{'f 1 9', 'ma', 'Sleepga II', 't', 'SlpgaII'},		
}

xivhotbar_keybinds_job['RUN'] = {
	{'f 3 1', 'ja', 'Ignis', 'me', 'Ice', 'Activate..._(red)'},
    {'f 3 2', 'ja', 'Gelus', 'me', 'Wind', 'Ice_Wall'},
    {'f 3 3', 'ja', 'Flabra', 'me', 'Earth', 'Activate..._(green)'},
    {'f 3 4', 'ja', 'Tellus', 'me', 'Thun.', 'Activate..._(yellow)'},
    {'f 3 5', 'ja', 'Sulpor', 'me', 'Water', 'Activate..._(purple)'},
    {'f 3 6', 'ja', 'Unda', 'me', 'Fire', 'Activate..._(blue)'},
    {'f 3 7', 'ja', 'Lux', 'me', 'Dark', 'Center_Your_Mind'},
    {'f 3 8', 'ja', 'Tenebrae', 'me', 'Light', 'Call_Forth_Magic'},
	

	{'f 4 1', 'ja', 'Vallation', 'me', 'Val.', 'Vallation'},
	{'f 4 2', 'ja', 'Valiance', 'me', 'Valnce', 'Valiance'},
	{'f 4 3', 'ja', 'Pflug', 'me', 'Pflug', 'Oblation'},
	{'f 4 4', 'ja', 'Swordplay', 'me', 'Sword.', 'Swordplay'},
	
	{'f 1 7', 'ma', 'Aquaveil', 'me', 'Veil',"Aquaveil"},
	{'f 1 8', 'ma', 'Flash', 't', 'Flash',"Flash"},	
	{'f 1 9', 'ma', 'Stoneskin', 'me', 'StnSkn',"tile639"},	
}
xivhotbar_keybinds_job['WHM'] = {
	{'f 4 1', 'ma', 'Teleport-Dem', 'me', 'Dem'},	
	{'f 4 2', 'ma', 'Teleport-Mea', 'me', 'Mea'},	
	{'f 4 3', 'ma', 'Teleport-Holla', 'me', 'Holla'},	
	{'f 4 4', 'ma', 'Teleport-Vahzl', 'me', 'Vahzl'},	
	{'f 3 1', 'ma', 'Recall-Pashh', 'me', 'Pash'},	
	{'f 3 2', 'ma', 'Recall-Jugner', 'me', 'Jugn'},	
	{'f 3 3', 'ma', 'Recall-Meriph', 'me', 'Meriph'},	
}


return xivhotbar_keybinds_job

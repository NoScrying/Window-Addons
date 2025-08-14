xivhotbar_keybinds_job['Base'] = {
  -- Hotbar #1 
  	{'b 1 7', 'ja',  'Accomplice', 'stpc', 'Acco.',"Smoke_Screen"}, 
	--{'b 1 8', 'ja',  'Collaborator', 'stpc', 'Collab.',"Cloak_and_Dagger"}, 
	{'b 1 8',  'input', '/heal', 'me', 'Rest'},
	{'b 1 9', 'ja',  'Conspirator', 'me', 'Acc',"Reflexive_Strike"}, 

	{'b 1 10', 'ja', 'Flee', 'me', 'Flee', 'tile090'},
  -- Hotbar #2
    {'b 2 1', 'ja',  'Steal', 't', 'Steal',"Roll_for_Initiative"}, 
	{'b 2 2', 'ja',  'Mug', 't', 'Mug',"Shadow_Strike"}, 
	{'b 2 3', 'ja',  'Despoil', 't', 'Despoil',"Enter_Shadow_Shroud"}, 
	{'b 2 4', 'ja',  'Bully', 't', 'Bully',"Thieves_Guild"}, 
	{'b 2 5', 'ja',  'Feint', 'me', 'Feint',"Prepare_Shadow_Portal"},

  	{'b 2 7', 'ja',  'Sneak Attack', 'me', 'Snk. Atk', 'Malicious_Backstab'}, 
	{'b 2 8', 'ja',  'Trick Attack', 'me', 'Trk. Atk', 'Thieves_Guild'},
	{'b 2 10', 'ja', 'Hide', 'me', 'Hide', 'Prepare_Shadow_Portal'},
	 {'f 2 1', 'ja',  'Perfect Dodge', 'me', 'Dodge'}, 
	 {'f 2 2', 'ja',  'Larceny', 't', 'STEAL'},
  -- Hotbar #3
    {'b 3 8', 'ct', 'ra', 't', 'RA', 'Abyssal_Fire'},
	{'b 1 6',  'input', '//send Nolyte //exec HM_Victory', 'me', 'Haste','_Advance!_'},
	
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
	{'b 1 1', 'weaponskill', 'Rudra\'s Storm', 'stnpc', 'Rudra', 'Zesho'},
    {'b 1 3', 'weaponskill', 'Evisceration', 'stnpc', 'Evisc.', 'Dagger-Multi'},
    {'b 1 2', 'weaponskill', 'Mercy Stroke', 'stnpc', 'Mercy', 'Dagger-Single'},
	{'b 1 4', 'weaponskill', 'Aeolian Edge', 't', 'Aeolian.', 'Dagger-AoE'},
	
	{'f 1 1', 'weaponskill', 'Rudra\'s Storm', 'stnpc', 'Rudra', 'Zesho'},
    {'f 1 3', 'weaponskill', 'Evisceration', 'stnpc', 'Evisceration.', 'Dagger-Multi'},
    {'f 1 2', 'weaponskill', 'Mercy Stroke', 'stnpc', 'Mercy', 'Dagger-Single'},
	{'f 1 4', 'weaponskill', 'Aeolian Edge', 't', 'Aeolian.', 'Dagger-AoE'},
	
	{'b 4 1', 'weaponskill', 'Cyclone', 't', 'Cyclone.'},
	{'b 4 2', 'weaponskill', 'Energy Drain', 't', 'Drain.'},
}
xivhotbar_keybinds_job['Sword'] = {
	-- Battle 
	{'b 1 1', 'weaponskill',  'Savage Blade', 'stnpc', 'Savage', 'Sword-Single3'}, 
	{'b 1 2', 'weaponskill', 'Seraph Blade', 't', 'Seraph.'},	
	{'b 1 3', 'weaponskill', 'Red Lotus Blade', 't', 'Lotus.'},	
	{'b 1 4', 'weaponskill',  'Sanguine Blade', 't', 'Sang.', 'DBlossom'},
	{'b 1 5', 'weaponskill',  'Circle Blade', 't', 'AoE', 'Sword-AoE'},
}
xivhotbar_keybinds_job['Scythe'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Shadow Of Death', 't', 'Shadow.'},	
}
xivhotbar_keybinds_job['Great Sword'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Freezebite', 't', 'Freeze.'},	
}
xivhotbar_keybinds_job['Polearm'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Raiden Thrust', 't', 'Raiden.'},	
}
xivhotbar_keybinds_job['Katana'] = {
	-- Battle
	{'b 1 1', 'weaponskill', 'Blade: Ei', 't', 'Ei', 'Katana-Yu'},
}
xivhotbar_keybinds_job['Great Katana'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Tachi: Jinpu', 't', 'Jinpu.'},	
}
xivhotbar_keybinds_job['Club'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Seraph Strike', 't', 'Seraph.'},	
}
xivhotbar_keybinds_job['Staff'] = {
	-- Battle 
	{'b 1 1', 'weaponskill', 'Earth Crusher', 't', 'Earth.'},	
	{'b 1 2', 'weaponskill', 'Sunburst', 't', 'Sunburst.'},	
}
xivhotbar_keybinds_job['NIN'] = {
	-- Battle
	{'b 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Shadow1', 'UtsuIchi'},
	{'b 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Shadow2', 'UtsuNi'},
	{'b 4 9', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'b 4 10', 'ma', 'Tonko: Ichi', 'me', 'Invis'},
	
}

xivhotbar_keybinds_job['DRG'] = {
	-- Battle
	{'b 4 1', 'ja', 'Jump', 't', 'Jump', 'Jump'},
	{'b 4 2', 'ja', 'High Jump', 't', 'H. Jump', 'HJump'},

}
xivhotbar_keybinds_job['WAR'] = {
	-- Battle
	{'b 4 7', 'ja', 'Berserk', 'me', 'Berserk', 'Berserk'},
	{'b 4 8', 'ja', 'Warcry', 'me', 'Warcry', 'Warcry'},
	{'b 4 9', 'ja', 'Aggressor', 'me', 'Aggr.', 'Agressor'},
    {'b 1 5',  'ja', 'Provoke', 'stnpc', 'Prov.',"tile150"},
}
xivhotbar_keybinds_job['DNC'] = {
	-- Battle
    {'b 4 1', 'ja', 'Drain Samba II', 'me', 'Drain II', 'Drain'},
	{'b 4 2', 'ja', 'Box Step', 't', 'Box', 'Box'},
    {'b 4 3', 'ja', 'Haste Samba', 'me', 'Haste', 'Haste'},

		{'b 4 9', 'ja', 'Reverse Flourish', 'me', 'Rvrs', 'Reverse'},
		{'b 4 4', 'ja', 'Divine Waltz', 'stpc', 'Cura', 'Divine'},
		{'b 4 5', 'ja', 'Curing Waltz III', 'stpc', 'CureIII', 'CureIII'},
		{'b 4 6', 'ja', 'Healing Waltz', 'stpc', 'Erase', 'Esuna'},
		{'b 4 10', 'ja', 'Spectral Jig', 'me', 'Spctrl', 'Spectral'},
}
xivhotbar_keybinds_job['RUN'] = {
    {'f 4 2',  'ja', 'Lunge', 't', 'Lunge', 'Lunge'},
    {'f 4 1',  'ja', 'swipe', 't', 'Swipe', 'Swipe'},
	
	{'f 3 1', 'ja', 'Ignis', 'me', 'Ice', 'Activate..._(red)'},
    {'f 3 2', 'ja', 'Gelus', 'me', 'Wind', 'Ice_Wall'},
    {'f 3 3', 'ja', 'Flabra', 'me', 'Earth', 'Activate..._(green)'},
    {'f 3 4', 'ja', 'Tellus', 'me', 'Thun.', 'Activate..._(yellow)'},
    {'f 3 5', 'ja', 'Sulpor', 'me', 'Water', 'Activate..._(purple)'},
    {'f 3 6', 'ja', 'Unda', 'me', 'Fire', 'Activate..._(blue)'},
    {'f 3 7', 'ja', 'Lux', 'me', 'Dark', 'Center_Your_Mind'},
    {'f 3 8', 'ja', 'Tenebrae', 'me', 'Light', 'Call_Forth_Magic'},
	
	{'f 4 3', 'ja', 'Vallation', 'me', 'Val.', 'Vallation'},
	{'f 4 4', 'ja', 'Valiance', 'me', 'Val+', 'Valiance'},
	{'f 4 6', 'ja', 'Pflug', 'me', 'Pflug', 'Valiance'},
	{'f 4 5', 'ja', 'Swordplay', 'me', 'Sword.', 'Swordplay'},
	
	{'f 2 1', 'ma', 'Barfire', 'me', 'Fire'},
	{'f 2 2', 'ma', 'Barblizzard', 'me', 'Ice'},
	{'f 2 3', 'ma', 'Barthunder', 'me', 'Thun'},
	{'f 2 4', 'ma', 'Baraero', 'me', 'Aero'},
	{'f 2 5', 'ma', 'Barwater', 'me', 'Water'},
	{'f 2 6', 'ma', 'Barstone', 'me', 'Stone'},
	
	{'f 2 7', 'ma', 'Barsleep', 'me', 'B.Sleep'},
	{'f 2 8', 'ma', 'Barparalyze', 'me', 'B.Para'},
	{'f 2 9', 'ma', 'Barsilence', 'me', 'Bar.Sil'},
}
xivhotbar_keybinds_job['RDM'] = {
	{'f 1 9', 'ma', 'Phalanx', 'me', 'Phalanx', 'Stoneskin'},

	{'f 4 1', 'ma', 'Stone II', 't', 'Stone II'},
	{'f 4 2', 'ma', 'Water II', 't', 'Water II'},
	{'f 4 3', 'ma', 'Aero II', 't', 'Aero II'},
	{'f 1 10', 'ja', 'Convert', 'me', 'Convert'},
	{'f 2 3', 'ma', 'Refresh', 'stpc', 'Refresh'},
	{'f 2 4', 'ma', 'Haste', 'stpc', 'Haste'},
	{'f 2 1', 'ma', 'Diaga', 't', 'Diaga'},
	{'f 2 2', 'ma', 'Dia', 't', 'Dia'},
	{'f 2 7', 'ma', 'Stoneskin', 'me', 'Stoneskin'},
	{'f 2 8', 'ma', 'Enfire', 'me', 'En-Element'},
	{'f 2 9', 'ma', 'Phalanx', 'me', 'Phalanx'},

	{'f 3 1', 'ma', 'Protect III', 'me', 'Protect'},
	{'f 3 2', 'ma', 'Shell II', 'me', 'Shell'},	
	{'f 4 9', 'ma', 'Sneak', 'stpc', 'Sneak'},
	{'f 2 5', 'ma', 'Ice Spikes', 'me', 'Spikes'},
	{'f 4 10', 'ma', 'Invisible', 'stpc', 'Invis'},
}
xivhotbar_keybinds_job['BLM'] = {
	{'f 1 9', 'ma', 'Phalanx', 'me', 'Phalanx', 'Stoneskin'},

	{'f 4 1', 'ma', 'Stone II', 't', 'Stone II'},
	{'f 4 2', 'ma', 'Water II', 't', 'Water II'},
	{'f 4 3', 'ma', 'Aero II', 't', 'Aero II'},
	{'f 1 10', 'ja', 'Convert', 'me', 'Convert'},
	{'f 2 3', 'ma', 'Refresh', 'stpc', 'Refresh'},
	{'f 2 4', 'ma', 'Haste', 'stpc', 'Haste'},
	{'f 2 1', 'ma', 'Diaga', 't', 'Diaga'},
	{'f 2 2', 'ma', 'Dia', 't', 'Dia'},
	{'f 2 7', 'ma', 'Stoneskin', 'me', 'Stoneskin'},
	{'f 2 8', 'ma', 'Enfire', 'me', 'En-Element'},
	{'f 2 9', 'ma', 'Phalanx', 'me', 'Phalanx'},

	{'f 3 1', 'ma', 'Protect III', 'me', 'Protect'},
	{'f 3 2', 'ma', 'Shell II', 'me', 'Shell'},	
	{'f 4 9', 'ma', 'Sneak', 'me', 'Sneak'},
	{'f 2 5', 'ma', 'Ice Spikes', 'me', 'Spikes'},
	{'f 4 10', 'ma', 'Invisible', 'me', 'Invis'},
}

return xivhotbar_keybinds_job
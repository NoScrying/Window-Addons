
xivhotbar_keybinds_general['Root'] = {
    -- #1 Hotbar
	{'b 5 1', 'input', '//exec Holy Water.txt', 'me', 'Holy Water',"holywater"},
	{'b 5 2', 'input', '//exec Echo Drops.txt', 'me', 'Echo Drops',"Echo"},	
	{'b 5 3', 'input', '//exec Remedy.txt', 'me', 'Remedy',"Remedy"},
	{'b 5 4', 'input', '//exec Panacea.txt', 'me', 'Panacea',"Panacea"},	
	{'b 5 5', 'input', '//exec Antidote.txt', 'me', 'Antidote',"Antidote"},		
	-- {'b 5 6', 'input', '/input /refa all'},
    {'f 6 8',  'input', '/pcmd add <Nolyte>', 'me', 'Invite', 'party_finder'},		
    {'f 6 9',  'input', '//send Nolyte /pcmd leave', 'me', 'Leave', 'exit_game'},	
    {'f 6 10',  'input', '//send @all /mount "Red Crab"', 'me', 'Mount', 'follow'},	
    {'f 6 6',  'input', '//send @all /dismount', 'me', 'DMount', 'withdraw2'},	
    {'f 6 7',  'input', '//send Nolyte //aa', 'me', 'Attack', 'Auto-attack_Icon'},	
    {'f 2 10',  'input', '//send Nolyte /ma "Chocobo Mazurka" <me>', 'me', 'Mazurka','Overwhelming_Celerity'},	
    -- {'b 6 1',  'input', '//send Nolyte /ma "Honor March" <me>', 'me', 'Honor','Tome_of_Justice'},	
	-- {'b 6 1',  'input', '//send Nolyte //exec Valor_Valor_Victory', 'me', 'VVV','Tome_of_Justice'},	
    -- {'b 6 2',  'input', '//send Nolyte //exec Valor_Blade_Victory', 'me', 'VBV','_Advance!_'},	
    -- {'b 6 3',  'input', '//send Nolyte /ma "Curaga III" <noscrying>', 'me', 'CuraIII','Searing_Light'},	
    -- {'b 6 5',  'input', '//send Nolyte //exec Marcato_NiTro.txt', 'me', 'NiTro',"Kayle_Divine_Ascent_HD"},
    -- {'b 6 7',  'input', '//send Nolyte /ma "Carnage Elegy" <bt>', 'me', 'Elegy', 'tile075'},	
    -- {'b 6 8',  'input', '//send Nolyte /ma "Magic Finale" <bt>', 'me', 'Dispel', 'tile877'},		
	
	{'f 6 1', 'input', '//send @all /item "Instant Warp" <me>', 'me','Warp','Instant_Warp_icon'},
	{'f 6 2', 'input', '// send @all /console exec Warp.txt', 'me','Eq.Rng.', 'Warped_Ring'},
	-- {'f 6 3', 'input', '//send @all /ma "Monomi: Ichi" <me>', 'me','Sneak',"tile019"},
	-- {'f 6 4', 'input', '//send @all /ma "Tonko: Ichi" <me>', 'me','Invis',"tile086"},
	{'b 6 10', 'input', '//send Nolyte /HasteSamba', 'me','Haste',"HasteSamba"},
	{'f 6 3', 'input', '//send Nolyte /SpectralJig', 'me','Invis',"Smoke_Screen"},
	{'f 6 4', 'input', '//send @all /console cancel Invisible', 'me','Invis',"Generic_Feature_Icon"},
}

return xivhotbar_keybinds_general

xivhotbar_keybinds_general['Root'] = {
    -- #1 Hotbar
	{'b 5 1', 'input', '//exec Holy Water.txt', 'me', 'Holy Water',"holywater"},
	{'b 5 2', 'input', '//exec Echo Drops.txt', 'me', 'Echo Drops',"Echo"},	
	{'b 5 3', 'input', '//exec Remedy.txt', 'me', 'Remedy',"Remedy"},
	{'b 5 4', 'input', '//exec Panacea.txt', 'me', 'Panacea',"Panacea"},	
	{'b 5 5', 'input', '//exec Antidote.txt', 'me', 'Antidote',"Antidote"},		
	-- {'b 5 6', 'input', '/input /refa all'},	
    -- {'b 1 7',  'input', '//send Noscrying //exec ProtectShell.txt', 'me', 'Prot', 'Barrier'},	

    -- {'b 1 10',  'input', '//send Noscrying /ma "Cure II" <Nolyte>', 'me', 'CureII', 'tile792'},	

    -- {'b 6 1',  'input', '//send Noscrying /ma "Honor March" <me>', 'me', 'Honor','Tome_of_Justice'},	
    -- {'b 6 2',  'input', '//send Noscrying /ma "Victory March" <me>', 'me', 'HST.2','_Advance!_'},	
    -- {'b 6 3',  'input', '//send Noscrying /ma "Valor Minuet V" <me>', 'me', 'ATK.V','tile595'},	
    -- {'b 6 4',  'input', '//send Noscrying /ma "Valor Minuet IV" <me>', 'me', 'ATK.IV','tile595'},
    -- {'b 6 5',  'input', '//send Noscrying //exec Marcato_NiTro.txt', 'me', 'NiTro',"Kayle_Divine_Ascent_HD"},
    -- {'b 6 6',  'input', '//send Noscrying /ma "Army\'s Paeon" <me>', 'me', 'Dupe1', 'tile078'},	
    -- {'b 6 7',  'input', '//send Noscrying /ma "Army\'s Paeon II" <me>', 'me', 'Dupe2', 'tile078'},		
    {'f 6 8',  'input', '/pcmd add <Noscrying>', 'me', 'Invite', 'party_finder'},		
    {'f 6 9',  'input', '//send Noscrying /pcmd leave', 'me', 'Leave', 'exit_game'},	
    {'f 6 10',  'input', '//send @all /mount "Red Crab"', 'me', 'Mount', 'follow'},	
    {'f 6 7',  'input', '//send @all /dismount', 'me', 'DMount', 'withdraw2'},	
    {'f 6 8',  'input', '//send @all /assist "Noscrying"', 'me', 'Attack', 'Auto-attack_Icon'},	
    -- {'b 2 10',  'input', '//send Noscrying /ma "Chocobo Mazurka" <me>', 'me', 'Mazurka','Overwhelming_Celerity'},	

	-- {'b 5 6', 'input', '/input /refa all'},		
	{'f 6 1', 'input', '//send @all /item "Instant Warp" <me>', 'me','Warp','Instant_Warp_icon'},
	{'f 6 2', 'input', '//send @all //exec Warp', 'me','Warp.R', 'Warped_Ring'},
	{'f 6 3', 'input', '//send @all //exec DemRing', 'me','Dem.R', 'Warped_Ring'},
}

return xivhotbar_keybinds_general
 

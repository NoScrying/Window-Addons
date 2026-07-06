
xivhotbar_keybinds_general['Root'] = {
    -- #1 Hotbar
	{'b 5 1', 'input', '//send @all //exec Holy Water', 'me', '',"holywater"},
	{'b 5 3', 'input', '//send @all //exec Remedy', 'me', '',"Remedy"},
	{'b 5 2', 'input', '//send @all //exec Panacea', 'me', '',"Panacea"},	
	{'b 5 4', 'input', '//send @all //exec VileElixir', 'me', '',"Antidote"},		
	-- {'b 5 6', 'input', '/input /refa all'},
    {'f 6 8',  'input', '//exec invite.txt', 'me', 'Invite', 'party_finder'},		
    {'f 6 9',  'input', '//send @others /pcmd leave', 'me', 'Leave', 'exit_game'},		
    {'f 6 10',  'input', '//send @all /mount "Red Crab"', 'me', 'Mount', 'follow'},	
    {'f 6 5',  'input', '//send @all /dismount', 'me', 'DMount', 'withdraw2'},
    {'f 6 6',  'input', '//send @others //atkwm slave off', 'me', 'Off','Auto-attack_Icon'},	
    
	{'f 6 7',  'input', '//exec AtkOn', 'me', 'Attack', 'Auto-attack_Icon'},	
    --{'f 6 7',  'input', '//send Nolyte //aa on', 'me', 'Attack', 'Auto-attack_Icon'},
	
    {'f 2 10',  'input', '//send @others //exec MoveSpeed.txt', 'me', 'Mazurka','Overwhelming_Celerity'},	
    -- {'b 6 1',  'input', '//send Nolyte /ma "Honor March" <me>', 'me', 'Honor','Tome_of_Justice'},	
	-- {'b 6 1',  'input', '//send Nolyte //exec Valor_Valor_Victory', 'me', 'VVV','Tome_of_Justice'},	
    -- {'b 6 2',  'input', '//send Nolyte //exec Valor_Blade_Victory', 'me', 'VBV','_Advance!_'},	
    -- {'b 6 3',  'input', '//send Nolyte /ma "Curaga III" <noscrying>', 'me', 'CuraIII','Searing_Light'},	
    --     {'b 6 1',  'input', '//send Nolyte //Dia2', 't', 'Dia2',"Kayle_Divine_Ascent_HD"},
    -- {'b 6 7',  'input', '//send Nolyte /ma "Carnage Elegy" <bt>', 'me', 'Elegy', 'tile075'},	
    -- {'b 6 8',  'input', '//send Nolyte /ma "Magic Finale" <bt>', 'me', 'Dispel', 'tile877'},		
	
	{'f 6 1', 'input', '//send @all /item "Instant Warp" <me>', 'me','Warp','Instant_Warp_icon'},
	{'f 6 2', 'input', '//send @all /console exec Warp.txt', 'me','Eq.Rng.', 'Warped_Ring'},
	-- {'f 6 3', 'input', '//send @all /ma "Monomi: Ichi" <me>', 'me','Sneak',"tile019"},
	-- {'f 6 4', 'input', '//send @all /ma "Tonko: Ichi" <me>', 'me','Invis',"tile086"},
	{'f 6 3', 'input', '//send @all /SpectralJig; wait 1; /invisible', 'me','Invis',"Smoke_Screen"},
	{'f 6 4', 'input', '//send @all /console cancel Invisible', 'me','InvisOff',"Generic_Feature_Icon"},
	
    {'b 7 6',  'input', '//exec MATKRolls.txt', 'me', 'MATK.Roll',"Weave_Self"},
    {'b 7 7',  'input', '//send Kiokura /HasteSamba', 'me', 'Samba',"Flowing_Resolve"},	
    {'b 7 1',  'input', '//exec ATKRolls.txt', 'me', 'ATK.Roll',"Pyro_Vortex"},
    {'b 7 8',  'input', '//send Kiokura /Darkshot', 'me', 'Dispel', 'Release_Energy'},
    {'b 7 9',  'input', '//send Kiokura /Lightshot', 'me', 'Sleep', 'Air_Missile'},
	--{'b 7 6', 'input', '//exec VileElixir.txt', 'me', 'VElixir',"Antidote"},	
    {'b 8 1',  'input', '//exec Buywarp', 'me', '',"Gil"},
    {'b 8 2',  'input', '//ffo me', 'me', 'Follow',"Leader"},	
    {'b 8 3',  'input', '//send Nolyte //ffo stop', 'me', 'N. Stop',"Leave2"},
    {'b 8 4',  'input', '//send Kiokura //ffo stop', 'me', 'K. Stop',"Leave2"},
    {'b 8 5',  'input', '//send @all //leave', 'me', 'Leave',"Leave3"},
	{'b 8 6',  'input',  '//send Nolyte /VictoryMarch', 'me', 'V.March','_Advance!_'},	
    {'b 8 8',  'input', '//send Kiokura /Wildcard', 'me', 'Wildcard',"Jack_of_All_Trades_rune_HD"},	
	
	--{'f 8 7',  'input', '//send Nolyte exec Lilith_Songs', 'me', 'Lilith',"Aphelios_Binding_Eclipse_HD"},	
    {'b 8 7',  'input', '//send Nolyte exec Valor_Valor_Victory', 'me', 'VVV',"Tome_of_Justice"},	
	
    {'b 8 9',  'input', '//send Nolyte exec HM_Victory', 'me', 'Melee',"Holy_Sheltron"},
    {'b 8 10',  'input', '//exec Food', 'me', 'Food',"Coeurl_Sub_icon"},
	
    {'f 8 1',  'input', '//send @all //buywarp', 'me', '',"Gil"},
    {'f 8 2',  'input', '//ffo me', 'me', 'Follow',"Leader"},	
    {'f 8 3',  'input', '//send Nolyte //ffo stop', 'me', 'N. Stop',"Leave2"},
    {'f 8 4',  'input', '//send Kiokura //ffo stop', 'me', 'K. Stop',"Leave2"},
    {'f 8 5',  'input', '//send @all //leave', 'me', 'Leave',"Leave3"},
	{'f 8 6',  'input',  '//send Nolyte /VictoryMarch', 'me', 'V.March','_Advance!_'},	
    {'f 8 8',  'input', '//send Kiokura /Wildcard', 'me', 'Wildcard',"Jack_of_All_Trades_rune_HD"},	
	
	--{'f 8 7',  'input', '//send Nolyte exec Lilith_Songs', 'me', 'Lilith',"Aphelios_Binding_Eclipse_HD"},	
    {'f 8 7',  'input', '//send Nolyte exec Valor_Valor_Victory', 'me', 'VVV',"Tome_of_Justice"},	
    {'f 8 9',  'input', '//send Nolyte exec HM_Victory', 'me', 'Melee',"Holy_Sheltron"},	
    {'f 8 10',  'input', '//exec Food', 'me', 'Food',"Coeurl_Sub_icon"},	
}

return xivhotbar_keybinds_general
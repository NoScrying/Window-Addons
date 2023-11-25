function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f12 gs c toggle DT set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set')
	send_command('bind !f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	Melee_Index = 1
	DT_Index = 1
	Run_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1

	Sub_Weapons_Set_Names = {'Naegling','Tauret'}
	sets.sub_weapons = {}
	sets.sub_weapons.Naegling = {
    main="Naegling",
    sub="Gleti's Knife",
	}
	sets.sub_weapons.Tauret = {
    main="Tauret",
	--sub="Gleti's Knife",
	sub="Sandung",
	}
	Weapons_Set_Names = {'Scythe','Spear','Sword','Dagger','Staff','Club','GreatSword'} --'Katana','GreatKatana'
	sets.weapons = {}
	sets.weapons.Scythe = {
    main="Lost Sickle",
	}
	sets.weapons.GreatSword = {
	main="Goujian",
	}
	sets.weapons.Spear = {
    main="Iapetus",
	}
	sets.weapons.Sword = {
    main="Twinned Blade",
	sub="Qutrub Knife",
	}
	sets.weapons.Dagger = {
    main="Wind Knife",
	sub="Qutrub Knife",
	}
	sets.weapons.Katana = {
    main="Debahocho",
	}
	sets.weapons.GreatKatana = {
    main="Xanmato",
	}
	sets.weapons.Staff = {
    main="Caver's Shovel",
	}
	sets.weapons.Club = {
    main="Lady Bell",
	sub="Qutrub Knife",
	}

		


	sets.ranged = {}
	sets.ranged.normal = {
    range="Kaja Bow",
    ammo="Stone Arrow",
    head="Tema. Headband",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Temachtiani Pants",
    feet="Temachtiani Boots",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Volley Earring",
    right_ear="Cessance Earring",
    left_ring="Prouesse Ring",
    right_ring="Cacoethic Ring",
    back="Thall Mantle",
}
	sets.ranged.precast = {
    range="Kaja Bow",
    ammo="Stone Arrow",
    head="Tema. Headband",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Temachtiani Pants",
    feet="Meg. Jam. +2",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Volley Earring",
    right_ear="Cessance Earring",
    left_ring="Prouesse Ring",
    right_ring="Cacoethic Ring",
    back="Thall Mantle",
}

	Melee_Set_Names = {'TH',"STP",} --, 'normal''DT'
	sets.melee = {} 				-- Leave this empty.
	sets.melee.normal = {
    ammo="Aurgelmir Orb",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Lissome Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
	left_ring="Lehko's Ring",
	right_ring="Gere Ring",
	back="Sacro Mantle",
	}
	sets.melee.TH = set_combine(sets.melee.normal,{
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    feet="Skulk. Poulaines",
    waist="Chaac Belt",
	})	
	sets.melee.DT = {
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Elite Royal Collar",
    waist="Engraved Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back="Sacro Mantle",
	}
	sets.melee.STP = {
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Iskur Gorget",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Crep. Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Sacro Mantle",
	}
	DT_Set_Names = {'TH'}
	sets.DT = {}
	sets.DT.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    feet="Skulk. Poulaines",
    waist="Chaac Belt",
	left_ring="Lehko's Ring",
	}
	
	Run_Set_Names = {'DT'}
	sets.run = {}
	sets.run.DT =  {
	ammo="Perfect Lucky Egg",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
	feet="Jute Boots +1",
    neck="Elite Royal Collar",
    waist="Engraved Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
	left_ring="Moonlight Ring",
    right_ring="Defending Ring",
	back="Sacro Mantle",
	}
		
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Cyclone'] = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    feet="Skulk. Poulaines",
	}
	sets.ws['Aeolian Edge'] = {
    -- head="White Rarab Cap +1",
	-- ammo="Perfect Lucky Egg",
    -- hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    -- feet="Skulk. Poulaines",
	
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},	
	
    body="Nyame Mail",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Fenrir Ring",
    right_ring="Epaminondas's Ring",
    back="Argocham. Mantle",
	}
	sets.ws['Sanguine Blade'] = {
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Rawhide Vest",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Fenrir Ring",
    right_ring="Epaminondas's Ring",
    back="Argocham. Mantle",
	}

	sets.ws["Rudra's Storm"] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body={ name="Herculean Vest", augments={'DEX+15','Pet: "Store TP"+9','Weapon skill damage +3%','Accuracy+15 Attack+15','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Evisceration'] = {
    ammo="Aurgelmir Orb",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Meg. Cuirie +2",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear="Sherida Earring",
    left_ring="Lehko's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Shark Bite'] = {
    ammo="Oshasha's Treatise",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Savage Blade'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	sets.ws['Mercy Stroke'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	sets.ws['Exenterator'] = {
    head="Skormoth Mask",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet="Meg. Jambeaux +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
	back="Sacro Mantle",
	}
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Steal'] = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Meghanada Chausses +2",
    feet="Skulk. Poulaines",
    neck="Lissome Necklace",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epona's Ring",
    right_ring="Mummu Ring",
	back="Sacro Mantle",
	}
	sets.ja['Mug'] = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Meghanada Chausses +2",
    feet="Skulk. Poulaines",
    neck="Lissome Necklace",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epona's Ring",
    right_ring="Mummu Ring",
	back="Sacro Mantle",
	}
	sets.ja['Despoil'] = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Meghanada Chausses +2",
    feet="Skulk. Poulaines",
    neck="Lissome Necklace",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epona's Ring",
    right_ring="Mummu Ring",
	back="Sacro Mantle",
	}
		
	sets.idle = {} 					-- Leave this empty.
	sets.idle.normal = {

	head="White Rarab Cap +1",
	body="Adhemar Jacket",
	hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Meghanada Chausses +2",
	feet="Trotter Boots",
    neck="Lissome Necklace",
    waist="Chaac Belt",
	left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
	left_ring="Epona\'s Ring",
	right_ring="Mummu Ring",
	back="Sacro Mantle",
	}
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    neck="Voltsurge Torque",
    left_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Weather. Ring",
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},	--, 8
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, 	--, 10
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
	}
	
    sets.midcast = {}               -- leave this empty    
	sets.midcast.phalanx = {
	ammo="Impatiens",
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},	--, 8
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, 	--, 10
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
	}
	sets.midcast['Diaga'] = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body="Malignance Tabard",
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Malignance Tights",
    feet="Skulk. Poulaines",
    neck="Elite Royal Collar",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epona's Ring",
    right_ring="Defending Ring",
	back="Moonbeam Cape",	
	}
	sets.midcast['Dia'] = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body="Malignance Tabard",
    hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
    legs="Malignance Tights",
    feet="Skulk. Poulaines",
    neck="Elite Royal Collar",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
    left_ring="Epona's Ring",
    right_ring="Defending Ring",
	back="Moonbeam Cape",	
	}
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.fastcast)
	end
    if spell.type == 'Flourishes I' then
        equip(sets.ja[spell.english])
    end
    if spell.type == 'Jigs' then
        equip(sets.ja[spell.english])
    end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])  
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end
	if spell.action_type == 'Ranged Attack' then
		equip(sets.ranged.precast)
	end
end


function midcast(spell)
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end
	if spell.action_type == 'Ranged Attack' then
		equip(sets.ranged.normal)
	end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
    if sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])  
	end
end

function aftercast(spell)
	idle()
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
	else
		equip(sets.run.DT)
	end
end
 
function status_change(new,old)
 idle()
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle DT set' then
        DT_Index = DT_Index +1
    if DT_Index > #DT_Set_Names then DT_Index = 1 end
        windower.add_to_chat('DT is now: '..DT_Set_Names[DT_Index])
        equip(sets.DT[DT_Set_Names[DT_Index]])
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
end

function user_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
end
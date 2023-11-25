function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle counter set') -- F9 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F9 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set') -- F12 = Cycle through
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	
	Buff_Index = 1	
	Melee_Index = 1
	TH_Index = 1
	Run_Index = 1
	Weapons_Index = 1
	counter_Index = 1

	Melee_Set_Names = {'normal', 'Counter', 'Hybrid'} --,DT
	sets.melee = {}
	sets.melee.normal = { 			--, 
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet", 			
    hands="Mpaca's Gloves",
	legs="Bhikku Hose +2", 			--, 25KA, 9STP, -13DT
    feet="Mpaca's Boots",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}}, --, 15KA
    waist="Moonbow Belt +1", 		--, 8TA, 15SBII, -6DT
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
	right_ear="Odr Earring",		--, Crit+5%
	--right_ear="Cessance Earring", 	--, 3DA, 3STP
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10KA, 10DA, -10PDT
	}
	sets.melee.DT = {				--, -52 PDT, -42 MDT, 60STP (11 Hit), 3QA, 17TA, 15DA, 64KA, Physical Damage Limit +16%, SB 8(43), SBII 30, Crit Chance +15% (20%)
    ammo="Staunch Tathlum +1", 		--, -3DT, PDL+3
    head="Malignance Chapeau", 		--, -6DT, 8STP, PDL+3
    body="Malignance Tabard", 		--, -9DT, 11STP, PDL+6
	hands="Malignance Gloves",		--, -5DT, 12STP, PLD+4
	legs="Mpaca's Hose",			--, 
    feet="Ken. Sune-Ate +1", 		--, 4TA, 8SB, Crit+5%
    --feet="Malignance Boots", 			--, -4DT, 9STP, PDL+2
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}}, --, 15KA
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear="Crepuscular Earring",--, 5STP
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII 
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10KA, 10DA, -10PDT
}
	sets.melee.Counter = {			--, -54PDT, 36STP(13 Hit),3QA, 8TA, 15DA, PDL+6%, Counter +49, Merit +5, JT +22  (76)
    ammo="Amar Cluster", 			--, 
    head="Malignance Chapeau", 		--, -6DT, 8STP, PDL+3
    body="Mpaca's Doublet", 		--, -10PDT, Counter +10
	hands="Rao Kote +1",			--, Counter +5
    legs="Anch. Hose +2",			--, Counter +5
    feet="Bhikku Gaiters +2",		--, -9DT,
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, Counter +10
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear={ name="Bhikku Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}}, --, Counter +7
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII  
    right_ring="Defending Ring",	--, -10DT
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}, --, 10DA, Counter +10
	}
	sets.melee.Hybrid = {			--, 
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ken. Tekko +1",
    legs="Mpaca's Hose",
    feet="Ken. Sune-Ate +1",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	counter_Set_Names = {'Stance',}	
	sets.counter = {}
	sets.counter.Stance = {			--, -48DT, 36STP(13 Hit),3QA, 8TA, 15DA, PDL+16%, Counter +47, Merit +5, JT +22  (74)
    ammo="Staunch Tathlum +1", 		--, -3DT, PDL+3
    head="Malignance Chapeau", 		--, -6DT, 8STP, PDL+3
    body="Mpaca's Doublet", 		--, 
	hands="Rao Kote +1",			--, Counter +5
    legs="Anch. Hose +2",			--, Counter +5
    feet="Bhikku Gaiters +2",		--, -9DT,
    neck={ name="Bathy Choker +1", augments={'Path: A',}}, --, Counter +10
    waist="Moonbow Belt +1", 		--, -6DT, 8TA, 15SBII
    left_ear="Sherida Earring", 	--, 5DA, 5STP, 5SBII
    right_ear={ name="Bhikku Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}}, --, Counter +7
    left_ring="Niqmaddu Ring",		--, 3QA, 5SBII  
    right_ring="Defending Ring",	--, -10DT
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}, --, 10DA, Counter +10
	}
	
	Run_Set_Names = {'DT','Regen'}
	sets.run = {}
	sets.run.DT = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Hermes' Sandals",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Regen = {
    ammo="Staunch Tathlum +1",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Hiza. Haramaki +2",
    hands="Rao Kote +1",
    legs="Bhikku Hose +2",
    feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {					--, +682 MEVA, 40-50 Elemental Resist, +5% Negate Magic Damage chance, -51% PDT, -41% MDT
    ammo="Staunch Tathlum +1",		--, Status Resistance +11, -3 DT,
    head="Malignance Chapeau", 		--, 123 MEVA, -6 DT, 8STP, PDL+3
    body="Malignance Tabard", 		--, 139 MEVA, -9 DT, 11STP, PDL+6
	hands="Malignance Gloves",		--, 112 MEVA, -5 DT, 12STP, PLD+4
	legs="Malignance Tights", 		--, 150 MEVA, -7 DT, 10STP, PDL+5
    feet="Malignance Boots", 		--, 150 MEVA, -4 DT, 9STP, PDL+2
    neck="Warder's Charm +1", 		--, +20 Element Resist, +5% Magic Absorb chance
    waist="Engraved Belt", 			--, +20-30 Element Resist
    left_ear="Sherida Earring",
    right_ear="Eabani Earring",		--, +8 Meva
    left_ring="Archon Ring", 		--, +5% Negate Magic Damage chance
    right_ring="Defending Ring", 	--, -10% DT
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}, --, 10 KA, 10 DA, -10 PDT 
	}


	TH_Set_Names = {'TH'}
	sets.TH = {} 					-- Leave this empty.
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {'Verethragna', 'Counter'}
	sets.Weapons = {} 					-- Leave this empty.
	sets.Weapons.Verethragna = {
	main = "Verethragna",
	} 
	sets.Weapons.Counter = {
	main = "Jolt Counter",
	} 

	
	sets.idle = {}
	sets.idle.normal = {
    ammo="Aurgelmir Orb",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Hizamaru Haramaki +2",
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
	legs="Bhikku Hose +2",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws = {} -- Leave this empty.
	sets.ws['Victory Smite'] = {
    ammo="Knobkierrie",
    head="Adhemar Bonnet +1",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws.Impetus = set_combine(sets.ws['Victory Smite'],{
    head="Adhemar Bonnet +1",
	body="Bhikku Cyclas +2",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})
	
	sets.ws['Ascetic\'s Fury'] = {
    ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shijin Spiral'] = {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Tornado Kick'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},	
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Dragon Kick'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},	
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Raging Fists'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
	body="Bhikku Cyclas +2",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Attack'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Rep. Plat. Medal",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Asuran Fists'] = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands="Hizamaru Kote +2",
    legs="Hiza. Hizayoroi +2",
    feet="Bhikku Gaiters +2",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Schere Earring",
    left_ring="Ilabrat Ring",
    right_ring="Sroda Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Howling Fist'] = {
	ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Bhikku Cyclas +2",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} 	

	sets.ja = {} 					-- Leave this empty.
	sets.ja.Enmity = {
    ammo="Staunch Tathlum +1",
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Bhikku Hose +2",
    feet="Bhikku Gaiters +2",
    neck="Moonlight Necklace",
    waist="Moonbow Belt +1",
    left_ear="Eris' Earring",
    right_ear="Friomisi Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Counterstance'] = set_combine(sets.ja.Enmity,{
    feet={ name="Hes. Gaiters +1", augments={'Enhances "Mantra" effect',}},
	})  
	sets.ja['Mantra'] = {
    feet={ name="Hes. Gaiters +1", augments={'Enhances "Mantra" effect',}},
	} 
	sets.ja['Chakra'] = {
    ammo="Staunch Tathlum +1",
    head="Hiza. Somen +2",
    body="Anch. Cyclas +2",
    hands={ name="Hes. Gloves +1", augments={'Enhances "Invigorate" effect',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Supershear Ring",
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}  
	sets.ja['Impetus'] = {	
	body="Bhikku Cyclas +2",
	ring2="Defending Ring",
	} 
	sets.ja['Dodge'] = {	
    feet="Anch. Gaiters +3",
	}  
	sets.ja['Footwork'] = {
	feet="Bhikku Gaiters +2",
	}
	sets.ja['Chi Blast'] = {	
    head={ name="Mel. Crown +2", augments={'Enhances "Penance" effect',}},
	}
	sets.ja['Boost'] = {	
    waist="Ask Sash",
	}
	sets.ja.footwork = {
    feet="Anch. Gaiters +3",
	legs="Bhikku Hose +2",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
	}
	sets.ja['Hundred Fists'] = {
    legs={ name="Hes. Hose +1", augments={'Enhances "Hundred Fists" effect',}},
	}
	sets.ja['Provoke'] = set_combine(sets.ja.Enmity,{
	})
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, { 
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Pflug'] = set_combine(sets.ja.Enmity, {
	})	
	sets.ja['Swordplay'] = set_combine(sets.ja.Enmity, {
	})
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.Sleep = {
	head="Frenzy Sallet",
	}
	
    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
	ammo="Sapience Orb",	
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	left_ear="Enchanter's Earring +1",
	}
    sets.midcast = {}               -- leave this empty  
	sets.midcast.phalanx = {
	ammo="Staunch Tathlum",
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	}
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end 
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])
			if buffactive['Impetus'] and spell.name == 'Victory Smite' or spell.name == "Ascetic's Fury" then
				equip(sets.ws.Impetus)
		end
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.MEVA)
	end 
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Impetus' then
        if gain then
			if player.status == "Engaged" then
				equip(sets.ja['Impetus'])
			else
				status_change(player.status)
			end
        end
	end
    if buff == 'Boost' then
        if gain then
           equip(sets.ja['Boost'])
           disable("waist")
       else
            enable("waist")
            status_change(player.status)
        end
	end	
    if buff == 'Footwork' then
		if gain then
			if player.status == "Engaged" then
				equip(sets.ja.footwork)
			else
				status_change(player.status)
			end
		end	
	end
	if buff == "sleep" then
		if gain then
            equip(set_combine(sets.MEVA, sets.buff.Sleep))
             	disable('head')
        	else
            	enable('head')
            status_change(player.status)
		end
	end
end

function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if buffactive['Footwork']then
				equip(sets.ja.footwork) 
					elseif buffactive['Impetus'] then
					equip(sets.ja['Impetus'])
				
			end	
		end
	if player.status=='Engaged' and player.equipment.main == 'Jolt Counter' then
		equip(sets.counter.Stance)
	end
	if player.status =='Idle' then
        equip(sets.run[Run_Set_Names[Run_Index]]) 
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
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
        if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
		equip(sets.TH[TH_Set_Names[TH_Index]])
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle counter set' then
        counter_Index = counter_Index +1
        if counter_Index > #counter_Set_Names then counter_Index = 1 end
        windower.add_to_chat('Counter set is now active')
		equip(sets.counter[counter_Set_Names[counter_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end

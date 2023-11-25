-- When engaged:
-- TPMode determines aftercast set used. F9 will toggle between TP, MidHybrid, and Hybrid modes.
-- Other modes may be accessed with "/console gs c TP <mode>"

-- When disengaged:
-- IdleMode determines aftercast set used. F10 will toggle between DT, Kite, and Regain modes.
-- Other modes may be accessed with "/console gs c Idle <mode>"

-- Some modes can be applied to both at once by not specifying "TP" or "Idle".
-- For example: "/console gs c DT" or "/console gs c Kite"
-- It is recommended to have "/console gs c DT" on a macro/bind for quickly going full DT.


-- Applying Runes:
-- This Lua uses a flexible system to allow you to apply your chosen runes with a single macro.
-- The macro to activate a rune is:
--		/console gs c Rune
-- To change your selected rune, add an element after the word "Rune".
--		Choices: Fire Earth Water Wind Ice Thunder Light Dark
-- **It is very important to capitalize the first letter and only the first letter.**
-- For example:
--		/console gs c RuneFire
--		/console gs c Rune Fire
-- This will set your rune configuration to [Fire - Fire - Fire] indicating 3x Ignis runes.

-- You only need to set the elements once. After that, calling "gs c Rune" will cycle through them.

-- You may select up to 3 elements to cycle. For example:
--		/console gs c RuneEarthWindIce
--		/console gs c Rune Earth Wind Ice

function file_unload()
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f11')
	send_command('unbind f12')
	send_command('unbind ^f10')
	send_command('unbind ^f11')
	send_command('unbind ^f12')
end
function get_sets()
	send_command('bind f9 gs c ToggleTP') -- F9 = Toggle TP Set (Used when engaged)
	send_command('bind f10 gs c ToggleIdle') -- F10 = Toggle Idle Set (Used when not engaged)
	send_command('bind !f12 gs c TH') -- Ctrl+F10 = Treasure Hunter toggle
	send_command('bind f11 gs c Turms') -- Ctrl+F11 = Turms toggle for parry healing
	send_command('bind f12 gs equip midcast.Phalanx') -- Ctrl+F12 to equip Phalanx gear when it's being cast on you
	send_command('bind !numpad1 input /item "Panacea" <me>')
	send_command('bind numpad1 input /item "Holy Water" <me>')

	StartLockStyle = '89'
	TPMode = 'DT'
	IdleMode = 'DT'
	AccMode = false -- "/console gs c Acc"
	Turms = false -- "/console gs c Turms" - This mode favors more parry healing when engaged
	TH = false -- "/console gs TH" to engage & cast in TH gear
	Announcements = true -- Announce Gambit & Rayke elements to the party (uses your first rune's element)
	Rune_ind = 1
	Rune = {}
	Rune[1] = 'Dark'
	Rune[2] = 'Dark'
	Rune[3] = 'Dark'
	ResistAilments = false
	ResistStun = false
	ResistPara = false
	ResistSilence = false
	ResistDeath = false
	ResistCharm = false
	
	TPModeCommands = {'DT','TP','Hybrid','Parry','Kite'}
	IdleModeCommands = {'Refresh'}

	TownIdle = S{"windurst woods","windurst waters","windurst walls","port windurst","bastok markets","bastok mines","port bastok","southern san d'oria","northern san d'oria","port san d'oria","upper jeuno","lower jeuno","port jeuno","ru'lude gardens","norg","kazham","tavnazian safehold","rabao","selbina","mhaura","aht urhgan whitegate","al zahbi","nashmau","western adoulin","eastern adoulin"}
	Escha = S{"escha - zi'tah","escha - ru'aun","reisenjima"}
	EnhancingSkillSpells = S{"Temper","Barfire","Barblizzard","Baraero","Barstone","Barthunder","Barwater"}
	InterruptSpells = S{"Cocoon","Geist Wall","Sheep Song","Healing Breeze","Aquaveil","Sleepga","Poisonga"}
	MAccWeaponskills = S{"Weapon Break","Armor Break"}

	macrobook = 2
	macroset = 1
	if player.sub_job=='WAR' then
		macrobook = 1
	elseif player.sub_job=='NIN' then
		macrobook = 3
	elseif player.sub_job=='SAM' then
		macrobook = 15
	elseif player.sub_job=='DRK' then
		macrobook = 14
	end
	send_command('input /macro book '..macrobook..';wait .1;input /macro set '..macroset..';wait 3;input /lockstyleset '..StartLockStyle)
	send_command('console_echo "Panacea: F11 ~~ Holy Water: F12 ~~ TreasureHunter: Ctrl+F10 ~~ Turms: Ctrl+F11"')
	send_command('console_echo "Rune Mode: ['..Rune[1]..' - '..Rune[2]..' - '..Rune[3]..']"')
	send_command('console_echo "TP Mode: ['..TPMode..'] ~ Idle Mode: ['..IdleMode..']"')

	-- This is your full defense set. It will be used as a baseline for several other sets.
	-- It's ok for this set to be overcapped on DT, because sets that inherit it may override slots and lose DT.
    sets.DT_Base = {
    ammo="Staunch Tathlum",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    left_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

    -- Max HP set, mostly just used for One for All
	sets.HP_Base = {
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",	
	}
	
	-- Base Magic Attack Bonus set, for elemental weaponskills, Lunge, and Swipe
	sets.MAB_Base = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Erilaz Galea +2",
    body="Rawhide Vest",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Erilaz Leg Guards +2",
    feet={ name="Adhemar Gamashes", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}

	-- Pure accuracy set currently only used for Box Step, but could be used elsewhere.
	sets.Acc_Base = {
    ammo="Yamarang",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1"
    -- ear1="Crepuscular Earring",
    -- ear2={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    -- ring1="Moonbeam Ring",
    -- ring2="Moonbeam Ring",
    -- back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	-- Treasure Hunter set. Don't put anything in here except TH+ gear.
	-- It overwrites several other sets when TH toggle is on (Ctrl+F10).
	sets.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	sets.HolyWater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}

	-- ************************************************************************
	--                               Precast
	-- ************************************************************************

	sets.precast = {}

	-- I aim for 70 FC with 1 merit in Inspiration for this set
	sets.precast.FC = {
    ammo="Impatiens",
    head="Runeist Bandeau +2",
    body="Erilaz Surcoat +2",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck="Voltsurge Torque",
    waist="Siegel Sash",
    left_ear="Loquacious Earring",
    right_ear="Magnetic Earring",
    left_ring="Kishar Ring",
    right_ring="Lebeche Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10',}},
	}

	sets.precast.FC_Enhancing = set_combine(sets.precast.FC, {
		waist="Siegel Sash",
		legs="Futhark Trousers +1"
	})
	
	sets.precast.FC_Utsusemi = sets.precast.FC

	-- ************************************************************************
	--                           Midcast - Spells
	-- ************************************************************************

    sets.midcast = {}

	sets.midcast.Enhancing = set_combine(sets.DT_Base, {
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body="Runeist Coat +1",
    hands="Runeist Mitons",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	})

	sets.midcast.EnhancingDuration = set_combine(sets.midcast.Enhancing, {
    head="Erilaz Galea +2",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
	})

	sets.midcast.Regen = set_combine(sets.midcast.EnhancingDuration, {
    head="Runeist Bandeau +2",
    body={ name="Taeon Tabard", augments={'"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'"Cure" potency +5%','"Regen" potency+3',}},
    --legs={ name="Taeon Tights", augments={'"Regen" potency+3',}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},	
    feet={ name="Taeon Boots", augments={'"Regen" potency+3',}},
    neck="Sacro Gorget",
    waist="Sroda Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
	})

	sets.midcast.Divine = set_combine(sets.DT_Base, {
    head="Erilaz Galea +2",
    body="Runeist Coat +1",
	hands="Erilaz Gauntlets +2",
    feet="Erilaz Greaves +2",
    neck="Unmoving Collar +1",
	legs="Runeist Trousers +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
	})

	sets.midcast.Enmity = {
	ammo="Staunch Tathlum",
    head="Runeist Bandeau +2",
    body="Emet Harness",
	hands="Runeist Mitons",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Enmity+10',}},
	}

	sets.midcast.Interrupt = {
    ammo="Impatiens",
	head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Rawhide Gloves",
    legs="Carmine Cuisses +1",
    feet="Erilaz Greaves +2",
    neck="Willpower Torque",
    waist="Resolute Belt",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Enmity+10',}},
	}

	sets.midcast.CuringWaltz = {
	}
	
	sets.midcast["Absorb-TP"] = {
	ammo="Yamarang",
	head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	
	sets.midcast["Flash"] = sets.midcast.Enmity
	sets.midcast["Foil"] = sets.midcast.Enmity
	sets.midcast["Crusade"] = sets.midcast.Enmity
	sets.midcast["Stun"] = sets.midcast.Enmity
	sets.midcast["Poisonga"] = sets.midcast.Enmity
	sets.midcast["Absorb-DEX"] = sets.midcast.Enmity
						

	-- ************************************************************************
	--                        Midcast - Weapon Skills
	-- ************************************************************************

	-- Main WS set for multi-hit WS like Resolution
	sets.midcast.Weaponskill = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Sroda Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.midcast.Weaponskill_Acc = set_combine(sets.midcast.Weaponskill, {
		ammo="Seething Bomblet +1",
		hands="Meghanada Gloves +2"
	})

	sets.midcast["Savage Blade"] = set_combine(sets.midcast.Weaponskill, {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	})
	sets.ws['Chant du Cygne']	= {
    ammo="Oshasha's Treatise",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= {
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.midcast["Dimidiation"] = {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.midcast["Dimidiation"].Acc = set_combine(sets.midcast["Dimidiation"], {
	})

	sets.midcast["Herculean Slash"] = set_combine(sets.MAB_Base, {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})

	sets.midcast["Shockwave"] = set_combine(sets.midcast["Savage Blade"], {
		waist="Fotia Belt"
	})

	sets.midcast["Requiescat"] = set_combine(sets.midcast.Weaponskill, {
		ring1="Regal Ring",
		ring2="Epaminondas's Ring",
	})
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	sets.ws['Armor Break']	= {
    ammo="Knobkierrie",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.MAccWeaponskill = set_combine(sets.midcast.Weaponskill, {
		ear1="Dignitary's Earring",
	})

	-- ************************************************************************
	--                          Midcast - Named Sets
	-- ************************************************************************

    -- JOB ABILITIES --
	sets.midcast["Elemental Sforzo"] = sets.midcast.Enmity

    sets.midcast["Gambit"] = set_combine(sets.midcast.Enmity, { hands="Runeist Mitons" })

	sets.midcast["Rayke"] = sets.midcast.Enmity

    sets.midcast["Liement"] = sets.midcast.Enmity
	
	sets.midcast["One For All"] = sets.HP_Base

	sets.midcast["Valiance"] = set_combine(sets.DT_Base, {
    body="Runeist Coat +1",
	})

	sets.midcast["Vallation"] = set_combine(sets.DT_Base, {
    body="Runeist Coat +1",
	})

	sets.midcast["Pflug"] = set_combine(sets.midcast.Enmity, {})

	sets.midcast["Battuta"] = set_combine(sets.midcast.Enmity, { head="Futhark Bandeau +1" })

	sets.midcast["Vivacious Pulse"] = set_combine(sets.midcast.Divine, { head="Erilaz Galea +2" })

	sets.midcast["Embolden"] = set_combine(sets.midcast.Enmity,	{ back={ name="Evasionist's Cape", augments={'Enmity+4','"Embolden"+15','"Dbl.Atk."+1',}},})

	sets.midcast["Swordplay"] = sets.midcast.Enmity

	sets.midcast["Lunge"] = sets.MAB_Base

	sets.midcast["Swipe"] = sets.MAB_Base

	sets.midcast["Box Step"] = sets.Acc_Base

	-- SPELLS --

	-- Phalanx tiers: 443 472 500
	-- I aim for 472 so I can fit in some HP/DT gear
	sets.midcast["Phalanx"] = set_combine(sets.midcast.Enhancing, {
	ammo="Staunch Tathlum",
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	})

	sets.midcast["Refresh"] = set_combine(sets.midcast.EnhancingDuration, {
		head="Erilaz Galea +2",
		waist="Gishdubar Sash"
	})
	
	sets.midcast["Stoneskin"] = set_combine(sets.midcast.EnhancingDuration, {
		waist="Siegel Sash"
	})
	
	-- ************************************************************************
	--                               Aftercast
	-- ************************************************************************

    sets.aftercast = {}

    sets.aftercast.DT = set_combine(sets.DT_Base, {
		ring1={name="Moonbeam Ring"},
		ring2={name="Moonbeam Ring"},
	})

    sets.aftercast.DT_Escha = set_combine(sets.aftercast.DT, {
	})

	sets.aftercast.DT_Turms = set_combine(sets.aftercast.DT, {
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Unmoving Collar +1",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})

    sets.aftercast.DT_TurmsBattuta = sets.aftercast.DT_Turms

	-- If your set isn't capped when Shell is down, you can put a custom set here.
	sets.aftercast.DT_NoShell = set_combine(sets.aftercast.DT, {
	})
	
    sets.aftercast.MEva = set_combine(sets.aftercast.DT, {
	})
	
	sets.aftercast.Def = set_combine(sets.aftercast.DT, {
		ammo="Staunch Tathlum",
		neck="Elite Royal Collar",
		ring2="Defending Ring"
	})

    sets.aftercast.Ailment = set_combine(sets.aftercast.DT, {

	})

	sets.aftercast.Kite = set_combine(sets.aftercast.DT, {
		ring2="Defending Ring",
		legs="Carmine Cuisses +1"
	})

	sets.aftercast.Kite_Escha = set_combine(sets.aftercast.Kite, {
	})

	sets.aftercast.Refresh = set_combine(sets.aftercast.Kite, {
		ammo="Homiliary",
		head="Rawhide Mask",
		neck="Sibyl Scarf",
		body="Runeist Coat +1",
		ring1={name="Stikini Ring +1", bag="wardrobe2"},
		ring2={name="Stikini Ring +1", bag="wardrobe4"},
		waist="Flume Belt"
	})

	sets.aftercast.DT_Regain = set_combine(sets.aftercast.Kite, {

	})

	sets.aftercast.TP = {
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Anu Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.TP_Turms = set_combine(sets.aftercast.TP, {
		hands="Turms Mittens +1",
		legs="Erilaz Leg Guards +2",
		feet="Turms Leggings +1"
	})

	sets.aftercast.TP_Sword = set_combine(sets.aftercast.TP, {
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		--hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Dual Wield"+4','STR+2','Accuracy+11','Attack+14',}},
		waist="Shetal Stone"
	})

	-- I removed most of this stuff because my TP sets all have plenty of accuracy.
	-- I mainly use my accuracy toggle for WS sets now.
	sets.aftercast.TP_Acc = set_combine(sets.aftercast.TP, {
		--neck="Combatant's Torque",
		--ear1="Zennaroi Earring",
		--legs="Carmine Cuisses +1",
	})

	sets.aftercast.TP_MidHybrid = {

	}

	sets.aftercast.TP_MidHybridTurms = set_combine(sets.aftercast.TP_MidHybrid, {
		hands="Turms Mittens +1",
		legs="Erilaz Leg Guards +2",
		feet="Turms Leggings +1"
	})

	sets.aftercast.TP_Hybrid = {
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Elite Royal Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.aftercast.TP_HybridTurms = set_combine(sets.aftercast.TP_Hybrid, {
		hands="Turms Mittens +1",
		legs="Erilaz Leg Guards +2",
		feet="Turms Leggings +1"
	})

	-- I change this set as needed. Currently a high-meva version of the Hybrid build.
	sets.aftercast.TP_HybridFull = set_combine(sets.aftercast.TP_Hybrid, {

	})
	
	sets.aftercast.TP_HybridFullTurms = set_combine(sets.aftercast.TP_HybridFull, {
		hands="Turms Mittens +1",
		legs="Erilaz Leg Guards +3",
		feet="Turms Leggings +1"
	})

	sets.aftercast.TP_Regain = set_combine(sets.aftercast.TP_Hybrid, {
	})

	sets.aftercast.TP_HybridAilment = set_combine(sets.aftercast.TP_Hybrid, {

	})
end

function precast(spell)
	if spell.type=="Item" then
		if spell.name=="Holy Water" then
			equip(sets.HolyWater)
		end
		return
	end
	-- Spell fast cast
    if spell.action_type=="Magic" then
		if spell.skill=="Enhancing Magic" then
			equip(sets.precast.FC_Enhancing)
		elseif string.find(spell.name,"Utsusemi") then
			equip(sets.precast.FC_Utsusemi)
		else
			equip(sets.precast.FC)
		end
    end
	-- Prevents Valiance/Vallation/Liement from being prevented by each other (cancels whichever is active)
	if spell.name=='Valiance' or spell.name=='Vallation' or spell.name=='Liement' then
		if buffactive['Valiance'] then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(535)
		elseif buffactive['Vallation'] then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(531)
		elseif buffactive['Liement'] then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(537)
		end
	end
	-- Gambit and Rayke announcements
	if Announcements then
		if spell.english == "Gambit" then
			send_command('timers delete "Gambit"')
			send_command('timers create "Gambit" 96 down;wait 66;input /party Gambit [WEARING OFF IN 30 SEC.];wait 30;input /party Gambit [OFF];timers delete "Gambit"')
			send_command('input /p Gambit['..Rune[1]..'] >> '..spell.target.name)
		elseif spell.english == "Rayke" then
			send_command('timers delete "Rayke"')
			send_command('timers create "Rayke" 47 down;wait 32;input /party Rayke [WEARING OFF IN 15 SEC.];wait 15;input /party Rayke [OFF];timers delete "Rayke"')
			send_command('input /p Rayke['..Rune[1]..'] >> '..spell.target.name)
		end
	end
end

function midcast(spell)
	if spell.type=="Item" then
		return
	end
	-- Check for a specific set
	if sets.midcast[spell.english] then
		equipSet = sets.midcast[spell.english]
		if AccMode and equipSet.Acc then
			equipSet = equipSet.Acc
		end
		equip(equipSet)
	elseif InterruptSpells:contains(spell.name) then
		equip(sets.midcast.Interrupt)
	-- Specific Spells
	elseif string.sub(spell.name,1,12)=="Curing Waltz" then
		equip(sets.midcast.CuringWaltz)
	-- Enhancing
	elseif spell.skill=="Enhancing Magic" then
		if string.find(spell.name,"Regen") then
			equip(sets.midcast.Regen)
		elseif string.find(spell.name,"Protect") or string.find(spell.name,"Shell") then
			equip(set_combine(sets.midcast.EnhancingDuration, {ring2="Sheltered Ring"}))
		elseif EnhancingSkillSpells:contains(spell.name) then
			equip(sets.midcast.Enhancing)
		else
			equip(sets.midcast.EnhancingDuration)
		end

		if spell.name=="Stoneskin" and buffactive["Stoneskin"] then
			windower.send_command('wait 1;cancel 37;')
		elseif spell.name=="Sneak" and buffactive["Sneak"] and spell.target.type=="SELF" then
			windower.send_command('cancel 71;')
		end
	-- Blue Magic
	elseif spell.skill=="Blue Magic" then
		equip(sets.midcast.Enmity)
	-- Ninjutsu
	elseif spell.type=="Ninjutsu" then
		if spell.name=="Utsusemi: Ichi" then
			if buffactive["Copy Image"] then
				windower.send_command('wait 1;cancel Copy Image;')
			elseif buffactive["Copy Image (2)"] then
				windower.send_command('wait 1;cancel Copy Image (2);')
			end
		end
		equip(sets.aftercast.DT)
	-- Weaponskill
	elseif spell.type=="WeaponSkill" then
		if AccMode then
			equip(sets.midcast.Weaponskill_Acc)
		elseif MAccWeaponskills:contains(spell.name) then
			equip(sets.midcast.MAccWeaponskill)
		else
			equip(sets.midcast.Weaponskill)
		end
	elseif spell.type=="BloodPactWard" or spell.type=="BloodPactRage" then
		equip(sets.midcast.BP)
    else
        equip(sets.midcast.Enmity)
    end
	if TH and spell.target.type=="MONSTER" then
		equip(sets.TH)
	end
end

function aftercast(spell)
	idle()
end

function status_change(new,old)
	idle()
end

function self_command(command)
	is_valid = command:lower()=="idle"
	announceModes = false

	if command:lower()=="toggletp" then
		is_valid = true
		if TPMode=="TP" then
			TPMode = "MidHybrid"
		elseif TPMode=="MidHybrid" then
			TPMode = "Hybrid"
		elseif TPMode=="Hybrid" then
			TPMode = "HybridFull"
		else
			TPMode = "TP"
		end
		announceModes = true
	elseif command:lower()=="toggleidle" then
		is_valid = true
		if IdleMode=="DT" then
			IdleMode = "Kite"
		elseif IdleMode=="Kite" then
			IdleMode = "Regain"
		else
			IdleMode = "DT"
		end
		announceModes = true
	elseif command:lower()=="dt" then
		is_valid = true
		TPMode = command
		IdleMode = command
		announceModes = true
	elseif command:lower()=="kite" then
		is_valid = true
		TPMode = command
		IdleMode = command
		announceModes = true
	-- "gs c TP <mode>" to change TP mode
	elseif string.sub(command:lower(),1,2)=="tp" and string.len(command) > 3 then
		tpCommand = string.sub(command,4,string.len(command))
		for _, v in ipairs(TPModeCommands) do
			if tpCommand:lower()==v:lower() then
				is_valid = true
				TPMode = v
				announceModes = true
			end
		end
	-- "gs c Idle <mode>" to change Idle mode
	elseif string.sub(command:lower(),1,4)=="idle" and string.len(command) > 5 then
		idleCommand = string.sub(command,6,string.len(command))
		for _, v in ipairs(IdleModeCommands) do
			if idleCommand:lower()==v:lower() then
				is_valid = true
				IdleMode = v
				announceModes = true
			end
		end
	elseif command:lower()=="acc" then
		if AccMode then
			is_valid = true
			AccMode = false
			send_command('console_echo "AccMode: false"')
		else
			is_valid = true
			AccMode = true
			send_command('console_echo "AccMode: true"')
		end
	elseif command:lower()=="turms" then
		Turms = Turms==false
		send_command('console_echo "Turms Healing: '..tostring(Turms)..'"')
		is_valid = true
	elseif command:lower()=="resistailments" then
		ResistAilments = ResistAilments==false
		send_command('console_echo "Resist Ailments: '..tostring(ResistAilments)..'"')
		is_valid = true
	elseif command:lower()=="resiststun" then
		ResistStun = ResistStun==false
		send_command('console_echo "Resist Stun: '..tostring(ResistStun)..'"')
		is_valid = true
	elseif command:lower()=="resistpara" then
		ResistPara = ResistPara==false
		send_command('console_echo "Resist Para: '..tostring(ResistPara)..'"')
		is_valid = true
	elseif command:lower()=="resistsilence" then
		ResistSilence = ResistSilence==false
		send_command('console_echo "Resist Silence: '..tostring(ResistSilence)..'"')
		is_valid = true
	elseif command:lower()=="resistdeath" then
		ResistDeath = ResistDeath==false
		send_command('console_echo "Resist Death: '..tostring(ResistDeath)..'"')
		is_valid = true
	elseif command:lower()=="resistcharm" then
		ResistDeath = ResistCharm==false
		send_command('console_echo "Resist Charm: '..tostring(ResistCharm)..'"')
		is_valid = true
	elseif string.sub(command,1,4)=="Rune" then
		is_valid = true
		if (string.len(command) > 4) then
			local i = 0
			for word in string.gmatch(command, "%u%l+") do
				if (i > 0) then
					Rune[i] = word
				end
				i = i + 1
			end
			if (i < 3) then
				Rune[2] = Rune[1]
				Rune[3] = Rune[1]
			elseif (i < 4) then
				Rune[3] = Rune[1]
			end
			Rune_ind = 1
			send_command('console_echo "Rune Mode: ['..(Rune[1])..' - '..(Rune[2])..' - '..(Rune[3])..']"')
		end
		rune()
	elseif command:lower()=="epeo" then
		is_valid = true
		equip({main="Epeolatry",sub="Utu Grip"})
	elseif command:lower()=="lion" then
		is_valid = true
		equip({main="Lionheart",sub="Utu Grip"})
	elseif command:lower()=="lyc" then
		is_valid = true
		equip({main="Lycurgos",sub="Utu Grip"})
	elseif command:lower()=="th" then
		TH = TH==false
		send_command('console_echo "Treasure Hunter: '..tostring(TH)..'"')
		is_valid = true
	end

	if is_valid then
		if (not midaction() and not pet_midaction()) or command:lower()=="idle" then
			idle()
		end
		if announceModes then
			send_command('console_echo "TP Mode: ['..TPMode..'] ~ Idle Mode: ['..IdleMode..']"')
		end
	else
		sanitized = command:gsub("\"", "")
		send_command('console_echo "Invalid self_command: '..sanitized..'"')
	end
end

function idle()
	--if TownIdle:contains(world.area:lower()) then
	--	return
	--end

-- Engaged --
	if player.status=="Engaged" then
		if TPMode=="TP" then
			if Turms then
				equip(sets.aftercast.TP_Turms)
			elseif AccMode then
				equip(sets.aftercast.TP_Acc)
			else
				equip(sets.aftercast.TP)
			end
		elseif TPMode=="MidHybrid" then
			if Turms then
				equip(sets.aftercast.TP_MidHybridTurms)
			else
				equip(sets.aftercast.TP_MidHybrid)
			end
		elseif TPMode=="Hybrid" then
			if Turms then
				equip(sets.aftercast.TP_HybridTurms)
			elseif ResistAilments then
				equip(sets.aftercast.TP_HybridAilment)
			else
				equip(sets.aftercast.TP_Hybrid)
			end
		elseif TPMode=="HybridFull" then
			if Turms then
				equip(sets.aftercast.TP_HybridFullTurms)
			else
				equip(sets.aftercast.TP_HybridFull)
			end
		elseif TPMode=="DT" then
			if not buffactive['Shell'] then
				equip(sets.aftercast.DT_NoShell)
			elseif Turms then
				if buffactive['Battuta'] then
					equip(sets.aftercast.DT_TurmsBattuta)
				else
					equip(sets.aftercast.DT_Turms)
				end
			else
				equip(sets.aftercast.DT)
			end
		elseif TPMode=="Kite" then
			if Escha:contains(world.area:lower()) then
				equip(sets.aftercast.Kite_Escha)
			else
				equip(sets.aftercast.Kite)
			end
		elseif TPMode=="Regain" then
			equip(sets.aftercast.TP_Regain)
		elseif TPMode=="Kite_Regain" then
			equip(sets.aftercast.TP_Kite_Regain)
		elseif TPMode=="Sword" then
			equip(sets.aftercast.TP_Sword)
		end
		if TH then
			equip(sets.TH)
		end
-- Disengaged --
	else
		if IdleMode=="DT" then
			if not buffactive['Shell'] then
				equip(sets.aftercast.DT_NoShell)
			elseif ResistAilments then
				equip(sets.aftercast.Ailment)
			elseif Escha:contains(world.area:lower()) then
				equip(sets.aftercast.DT_Escha)
			else
				equip(sets.aftercast.DT)
			end
		elseif IdleMode=="Kite" then
			if Escha:contains(world.area:lower()) then
				equip(sets.aftercast.Kite_Escha)
			else
				equip(sets.aftercast.Kite)
			end
		elseif IdleMode=="Regain" then
			equip(sets.aftercast.DT_Regain)
		elseif IdleMode=="KiteRegain" then
			equip(sets.aftercast.Kite_Regain)
		elseif IdleMode=="Refresh" then
			equip(sets.aftercast.Refresh)
		elseif IdleMode=="MEva" then
			equip(sets.aftercast.MEva)
		elseif IdleMode=="MDB" then
			equip(sets.aftercast.MDB)
		elseif IdleMode=="Def" then
			equip(sets.aftercast.Def)
		end
	end

-- Ailment Resistance Gear - Last Takes Priority
	if ResistPara or ResistStun or ResistSilence or ResistCharm then
		if not IdleMode=='TP' and not IdleMode=='MidHybrid' and not IdleMode=='Hybrid' then
			equip({ammo="Staunch Tathlum +1"})
		end
	end
	if ResistPara then
		equip({ear2="Hearty Earring",ring2="Blood Ring"})
	end
	if ResistStun then
		if IdleMode=='TP' or IdleMode=='MidHybrid' or IdleMode=='Hybrid' then
			equip({neck="Anu Torque"})
		else
			equip({ear1="Hearty Earring",ear2="Dominance Earring",back="Tantalic Cape"})
		end
	end
	if ResistSilence then
		if ResistPara then
			equip({ring1="Insect Ring"})
		else
			equip({ring2="Insect Ring"})
		end
		equip({ear1="Hearty Earring",ear2="Etiolation Earring"})
	end
	if ResistCharm then
		equip({neck="Unmoving Collar +1",back="Solemnity Cape"})
	end
	if ResistDeath then
		equip({ring1="Shadow Ring",ring2="Warden's Ring"})
	end


-- Ailment Resistance Gear - Last Takes Priority
	if ResistPara or ResistStun or ResistSilence or ResistCharm then
		if not IdleMode=='TP' and not IdleMode=='MidHybrid' and not IdleMode=='Hybrid' then
			equip({ammo="Staunch Tathlum +1"})
		end
	end
	if ResistPara then
		equip({ear2="Hearty Earring",ring2="Blood Ring"})
	end
	if ResistStun then
		if IdleMode=='TP' or IdleMode=='Hybrid' then
			equip({neck="Anu Torque"})
		else
			equip({ear1="Hearty Earring",ear2="Dominance Earring",back="Tantalic Cape"})
		end
	end
	if ResistSilence then
		if ResistPara then
			equip({ring1="Insect Ring"})
		else
			equip({ring2="Insect Ring"})
		end
		equip({ear1="Hearty Earring",ear2="Etiolation Earring"})
	end
	if ResistCharm then
		equip({neck="Unmoving Collar +1",back="Solemnity Cape"})
	end
	if ResistDeath then
		equip({ring1="Shadow Ring",ring2="Warden's Ring"})
	end
end

function rune()
	nextRune = Rune[Rune_ind]
	Rune_ind = Rune_ind+1
	if (Rune_ind > 3) then
		Rune_ind = 1
	end
	if (nextRune=="Fire") then
		send_command('input /ja Ignis <me>')
	elseif (nextRune=="Earth") then
		send_command('input /ja Tellus <me>')
	elseif (nextRune=="Water") then
		send_command('input /ja Unda <me>')
	elseif (nextRune=="Wind") then
		send_command('input /ja Flabra <me>')
	elseif (nextRune=="Ice") then
		send_command('input /ja Gelus <me>')
	elseif (nextRune=="Thunder") then
		send_command('input /ja Sulpor <me>')
	elseif (nextRune=="Light") then
		send_command('input /ja Lux <me>')
	elseif (nextRune=="Dark") then
		send_command('input /ja Tenebrae <me>')
	else
		send_command('console_echo "Error: Bad Rune Element ['..nextRune..']"')
	end
end
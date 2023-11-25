ick_tp_weapon()
	
	-- How many extra songs we can keep from Daurdabla
	info.DaurdablaSongs = 2
	-- Whether to try to automatically use Daurdabla when an appropriate gap in current vs potential
	-- songs appears, and you haven't specifically changed state.DaurdablaMode.
	state.AutoDaurdabla = false
	
	-- Additional local binds
	send_command('bind ^` input /ma "Chocobo Mazurka" <me>')

	-- Default macro set/book
	set_macro_page(2, 18)
end


-- Called when this job file is unloaded (eg: job change)
function file_unload()
	if binds_on_unload then
		binds_on_unload()
	end

	send_command('unbind ^`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets

	-- Fast cast sets for spells
	sets.precast.FC = {head="Nahtirah Hat",ear2="Loquac. Earring",
		hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}

	sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris"})

	sets.precast.FC.EnhancingMagic = set_combine(sets.precast.FC, {waist="Siegel Sash"})

	sets.precast.FC.BardSong = {main="Felibre's Dague",range="Gjallarhorn",
		head="Aoidos' Calot +2",neck="Aoidos' Matinee",ear1="Aoidos' Earring",ear2="Loquac. Earring",
		body="Sha'ir Manteel",hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Witful Belt",legs="Gendewitha Spats",feet="Bokwus Boots"}

	sets.precast.FC.Daurdabla = set_combine(sets.precast.FC.BardSong, {range="Daurdabla"})
		
	
	-- Precast sets to enhance JAs
	
	sets.precast.JA.Nightingale = {feet="Bihu Slippers"}
	sets.precast.JA.Troubadour = {body="Bard's Justaucorps +2"}
	sets.precast.JA['Soul Voice'] = {legs="Bard's Cannions +2"}

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {range="Gjallarhorn",
		head="Nahtirah Hat",
		body="Gendewitha Bliaut",hands="Buremte Gloves",
		back="Refraction Cape",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
       
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {range="Gjallarhorn",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS['Evisceration'] = {
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.precast.WS['Exenterator'] = {
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.precast.WS['Mordant Rime'] = {range="Gjallarhorn",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Bard's Justaucorps +2",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Caudata Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	
	-- Midcast Sets

	-- General set for recast times.
	sets.midcast.FastRecast = {range="Angel Lyre",
		head="Nahtirah Hat",ear2="Loquacious Earring",
		body="Vanir Cotehardie",hands="Gendewitha Gages",ring1="Prolix Ring",
		back="Swith Cape",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	-- Gear to enhance certain classes of songs.  No instruments added here since Gjallarhorn is being used.
	sets.midcast.Ballad = {legs="Aoidos' Rhing. +2"}
	sets.midcast.Lullaby = {hands="Brioso Cuffs"}
	sets.midcast.Madrigal = {head="Aoidos' Calot +2"}
	sets.midcast.March = {hands="Aoidos' Manchettes +2"}
	sets.midcast.Minuet = {body="Aoidos' Hongreline +2"}
	sets.midcast.Minne = {}
	sets.midcast.Carol = {head="Aoidos' Calot +2",
		body="Aoidos' Hongreline +2",hands="Aoidos' Manchettes +2",
		legs="Aoidos' Rhing. +2",feet="Aoidos' Cothrn. +2"}
	sets.midcast["Sentinel's Scherzo"] = {feet="Aoidos' Cothrn. +2"}
	sets.midcast['Magic Finale'] = {neck="Wind Torque",waist="Corvax Sash",legs="Aoidos' Rhing. +2"}

	sets.midcast.Mazurka = {range="Daurdabla"}
	

	-- For song buffs (duration and AF3 set bonus)
	sets.midcast.SongEffect = {main="Legato Dagger",range="Gjallarhorn",
		head="Aoidos' Calot +2",neck="Aoidos' Matinee",ear2="Loquacious Earring",
		body="Aoidos' Hongreline +2",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",
		back="Harmony Cape",waist="Corvax Sash",legs="Marduk's Shalwar +1",feet="Brioso Slippers"}

	-- For song defbuffs (duration primary, accuracy secondary)
	sets.midcast.SongDebuff = {main="Legato Dagger",range="Gjallarhorn",
		head="Nahtirah Hat",neck="Aoidos' Matinee",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Aoidos' Hongreline +2",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",ring2="Sangoma Ring",
		back="Refraction Cape",waist="Goading Belt",legs="Marduk's Shalwar +1",feet="Brioso Slippers"}

	-- For song defbuffs (accuracy primary, duration secondary)
	sets.midcast.ResistantSongDebuff = {main="Izhiikoh",range="Gjallarhorn",
		head="Nahtirah Hat",neck="Wind Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Brioso Justaucorps +1",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",ring2="Sangoma Ring",
		back="Refraction Cape",waist="Goading Belt",legs="Aoidos' Rhing. +2",feet="Bokwus Boots"}

	-- Song-specific recast reduction
	sets.midcast.SongRecast = {ear2="Loquacious Earring",
		ring1="Prolix Ring",
		back="Harmony Cape",waist="Corvax Sash",legs="Aoidos' Rhing. +2"}

	--sets.midcast.Daurdabla = set_combine(sets.midcast.FastRecast, sets.midcast.SongRecast, {range="Daurdabla"})

	-- Cast spell with normal gear, except using Daurdabla instead
	sets.midcast.Daurdabla = {range="Daurdabla"}

	-- Dummy song with Daurdabla; minimize duration to make it easy to overwrite.
	sets.midcast.DaurdablaDummy = {main="Izhiikoh",range="Daurdabla",
		head="Nahtirah Hat",neck="Wind Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Brioso Justaucorps +1",hands="Aoidos' Manchettes +2",ring1="Prolix Ring",ring2="Sangoma Ring",
		back="Swith Cape",waist="Goading Belt",legs="Gendewitha Spats",feet="Bokwus Boots"}

	-- Other general spells and classes.
	sets.midcast.Cure = {main="Arka IV",sub='Achaq Grip',
		head="Gendewitha Caubeen",
		body="Gendewitha Bliaut",hands="Bokwus Gloves",ring1="Ephedra Ring",ring2="Sirona's Ring",
		legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	sets.midcast.Curaga = sets.midcast.Cure
		
	sets.midcast.Stoneskin = {
		head="Nahtirah Hat",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",
		legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
		
	sets.midcast.Cursna = {
		neck="Malison Medallion",
		hands="Hieros Mittens",ring1="Ephedra Ring"}

	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {main=gear.Staff.HMP, 
		body="Gendewitha Bliaut",
		legs="Nares Trews",feet="Chelona Boots +1"}
	
	
	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = {main=gear.Staff.PDT, sub="Mephitis Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Paguroidea Ring",ring2="Sangoma Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Nares Trews",feet="Aoidos' Cothurnes +2"}

	sets.idle.Town = {main=gear.Staff.PDT, sub="Mephitis Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Paguroidea Ring",ring2="Sangoma Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Nares Trews",feet="Aoidos' Cothurnes +2"}
	
	sets.idle.Weak = {main=gear.Staff.PDT,sub="Mephitis Grip",range="Oneiros Harp",
		head="Gendewitha Caubeen",neck="Twilight Torque",ear1="Bloodgem Earring",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1="Dark Ring",ring2="Sangoma Ring",
		back="Umbra Cape",waist="Flume Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
	
	
	-- Defense sets

	sets.defense.PDT = {main=gear.Staff.PDT,sub="Mephitis Grip",
		head="Gendewitha Caubeen",neck="Twilight Torque",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1='Dark Ring',
		back="Umbra Cape",waist="Flume Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	sets.defense.MDT = {main=gear.Staff.PDT,sub="Mephitis Grip",
		head="Nahtirah Hat",neck="Twilight Torque",
		body="Gendewitha Bliaut",hands="Gendewitha Gages",ring1='Dark Ring',ring2="Shadow Ring",
		back="Engulfer Cape",waist="Flume Belt",legs="Bokwus Slops",feet="Gendewitha Galoshes"}

	sets.Kiting = {feet="Aoidos' Cothurnes +2"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Basic set for if no TP weapon is defined.
	sets.engaged = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Vanir Cotehardie",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	-- Sets with weapons defined.
	sets.engaged.Dagger = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Vanir Cotehardie",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}

	-- Set if dual-wielding
	sets.engaged.DualWield = {range="Angel Lyre",
		head="Nahtirah Hat",neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		body="Vanir Cotehardie",hands="Buremte Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
		back="Atheling Mantle",waist="Goading Belt",legs="Gendewitha Spats",feet="Gendewitha Galoshes"}
end


-------------------------------------------------------------------------------------------------------------------
-- Job- versions of event handlers, allowing overriding default handling.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'BardSong' then
		-- Auto-Pianissimo
		if spell.target.type == 'PLAYER' and not spell.target.charmed and not state.Buff['Pianissimo'] then
			cancel_spell()
			send_command('@input /ja "Pianissimo" <me>; wait 1.25; input /ma "'..spell.name..'" '..spell.target.name)
			eventArgs.cancel = true
			return
		end
	end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		-- Default base equipment layer of fast recast.
		equip(sets.midcast.FastRecast)

		if spell.type == 'BardSong' then
			-- layer general gear on first, then let default handler add song-specific gear.
			local generalClass = get_song_class(spell)
			if generalClass and sets.midcast[generalClass] then
				equip(sets.midcast[generalClass])
			end
		end
	end
end


function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.type == 'BardSong' then
		if state.DaurdablaMode == 'Daurdabla' then
			equip(sets.midcast.Daurdabla)
		elseif state.DaurdablaMode == 'None' and spell.target.type == 'SELF' and state.AutoDaurdabla and daur_song_gap() then
			equip(sets.midcast.Daurdabla)
		end

		state.DaurdablaMode = 'None'
	end
end


-- Set eventArgs.handled to true if we don't want automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
	if not spell.interrupted then
		if state.Buff[spell.name] ~= nil then
			state.Buff[spell.name] = true
		end

		if spell.type == 'BardSong' then
			if spell.target then
				if spell.target.type and spell.target.type:upper() == 'SELF' then
					adjust_Timers(spell, action, spellMap)
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Hooks for other events that aren't handled by the include file.
-------------------------------------------------------------------------------------------------------------------

function job_buff_change(buff, gain)
	if state.Buff[buff] ~= nil then
		state.Buff[buff] = gain
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Hooks for Daurdabla mode handling.
-------------------------------------------------------------------------------------------------------------------

-- Request job-specific mode tables.
-- Return true on the third returned value to indicate an error: that we didn't recognize the requested field.
function job_get_mode_list(field)
	if field == 'Daurdabla' and player.inventory.daurdabla then
		return options.DaurdablaModes, state.DaurdablaMode
	end
end

-- Set job-specific mode values.
-- Return true if we recognize and set the requested field.
function job_set_mode(field, val)
	if field == 'Daurdabla' then
		state.DaurdablaMode = val
		return true
	end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
	pick_tp_weapon()
end


-- Handle notifications of general user state change.
function job_state_change(stateField, newValue)
	if stateField == 'OffenseMode' then
		if newValue == 'Normal' then
			disable('main','sub')
		else
			enable('main','sub')
		end
	elseif stateField == 'Reset' then
		if state.OffenseMode == 'None' then
			enable('main','sub')
		end
	end
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
	local defenseString = ''
	if state.Defense.Active then
		local defMode = state.Defense.PhysicalMode
		if state.Defense.Type == 'Magical' then
			defMode = state.Defense.MagicalMode
		end

		defenseString = 'Defense: '..state.Defense.Type..' '..defMode..', '
	end
	
	local meleeString = ''
	if state.OffenseMode == 'Normal' then
		if state.CombatForm then
			meleeString = 'Melee: Dual-wield, '
		else
			meleeString = 'Melee: Single-wield, '
		end
	end

	add_to_chat(122,'Casting ['..state.CastingMode..'], '..meleeString..'Idle ['..state.IdleMode..'], '..defenseString..
		'Kiting: '..on_off_names[state.Kiting])

	eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Determine the custom class to use for the given song.
function get_song_class(spell)
	if spell.targets:contains('Enemy') then
		if state.CastingMode == 'Resistant' then
			return 'ResistantSongDebuff'
		else
			return 'SongDebuff'
		end
	elseif state.DaurdablaMode == 'Dummy' then
		return 'DaurdablaDummy'
	else
		return 'SongEffect'
	end
end


-- Function to create custom buff-remaining timers with the Timers plugin,
-- keeping only the actual valid songs rather than spamming the default
-- buff remaining timers.
function adjust_Timers(spell, action, spellMap)
	local t = os.time()
	
	-- Eliminate songs that have already expired from our local list.
	local tempreg = {}
	for i,v in pairs(timer_reg) do
		if v < t then tempreg[i] = true end
	end
	for i,v in pairs(tempreg) do
		timer_reg[i] = nil
	end
	
	local dur = calculate_duration(spell.name, spellMap)
	if timer_reg[spell.name] then
		-- Can delete timers that have less than 120 seconds remaining, since
		-- the new version of the song will overwrite the old one.
		-- Otherwise create a new timer counting down til we can overwrite.
		if (timer_reg[spell.name] - t) <= 120 then
			send_command('timers delete "'..spell.name..'"')
			timer_reg[spell.name] = t + dur
			send_command('timers create "'..spell.name..'" '..dur..' down')
		end
	else
		-- Figure out how many songs we can maintain.
		local maxsongs = 2
		if player.equipment.range == 'Daurdabla' then
			maxsongs = maxsongs + info.DaurdablaSongs
		end
		if buffactive['Clarion Call'] then
			maxsongs = maxsongs+1
		end
		-- If we have more songs active than is currently apparent, we can still overwrite
		-- them while they're active, even if not using appropriate gear bonuses (ie: Daur).
		if maxsongs < table.length(timer_reg) then
			maxsongs = table.length(timer_reg)
		end
		
		-- Create or update new song timers.
		if table.length(timer_reg) < maxsongs then
			timer_reg[spell.name] = t+dur
			send_command('timers create "'..spell.name..'" '..dur..' down')
		else
			local rep,repsong
			for i,v in pairs(timer_reg) do
				if t+dur > v then
					if not rep or rep > v then
						rep = v
						repsong = i
					end
				end
			end
			if repsong then
				timer_reg[repsong] = nil
				send_command('timers delete "'..repsong..'"')
				timer_reg[spell.name] = t+dur
				send_command('timers create "'..spell.name..'" '..dur..' down')
			end
		end
	end
end

-- Function to calculate the duration of a song based on the equipment used to cast it.
-- Called from adjust_Timers(), which is only called on aftercast().
function calculate_duration(spellName, spellMap)
	local mult = 1
	if player.equipment.range == 'Daurdabla' then mult = mult + 0.3 end -- change to 0.25 with 90 Daur
	if player.equipment.range == "Gjallarhorn" then mult = mult + 0.4 end -- change to 0.3 with 95 Gjall
	
	if player.equipment.main == "Carnwenhan" then mult = mult + 0.1 end -- 0.1 for 75, 0.4 for 95, 0.5 for 99/119
	if player.equipment.main == "Legato Dagger" then mult = mult + 0.1 end
	if player.equipment.neck == "Aoidos' Matinee" then mult = mult + 0.1 end
	if player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if player.equipment.legs == "Mdk. Shalwar +1" then mult = mult + 0.1 end
	if player.equipment.feet == "Brioso Slippers" then mult = mult + 0.1 end
	if player.equipment.feet == "Brioso Slippers +1" then mult = mult + 0.11 end
	
	if spellMap == 'Paeon' and player.equipment.head == "Brioso Roundlet" then mult = mult + 0.1 end
	if spellMap == 'Paeon' and player.equipment.head == "Brioso Roundlet +1" then mult = mult + 0.1 end
	if spellMap == 'Madrigal' and player.equipment.head == "Aoidos' Calot +2" then mult = mult + 0.1 end
	if spellMap == 'Minuet' and player.equipment.body == "Aoidos' Hngrln. +2" then mult = mult + 0.1 end
	if spellMap == 'March' and player.equipment.hands == 'Ad. Mnchtte. +2' then mult = mult + 0.1 end
	if spellMap == 'Ballad' and player.equipment.legs == "Aoidos' Rhing. +2" then mult = mult + 0.1 end
	if spellName == "Sentinel's Scherzo" and player.equipment.feet == "Aoidos' Cothrn. +2" then mult = mult + 0.1 end
	
	if buffactive.Troubadour then
		mult = mult*2
	end
	if spellName == "Sentinel's Scherzo" then
		if buffactive['Soul Voice'] then
			mult = mult*2
		elseif buffactive['Marcato'] then
			mult = mult*1.5
		end
	end
	
	-- Tweak for inaccuracies in cast vs aftercast timing
	mult = mult - 0.05
	
	local totalDuration = mult*120

	return totalDuration
end


function daur_song_gap()
	if player.inventory.daurdabla then
		-- Figure out how many songs we can maintain.
		local maxsongs = 2 + info.DaurdablaSongs
		
		local activesongs = table.length(timer_reg)
		
		-- If we already have at least 2 songs on, but not enough to max out
		-- on possible Daur songs, flag us as Daur-ready.
		if activesongs >= 2 and activesongs < maxsongs then
			return true
		end
	end
	
	return false
end



-- Examine equipment to determine what our current TP weapon is.
function pick_tp_weapon()
	if brd_daggers:contains(player.equipment.main) then
		state.CombatWeapon = 'Dagger'
		
		if S{'NIN','DNC'}:contains(player.sub_job) and brd_daggers:contains(player.equipment.sub) then
			state.CombatForm = "DualWield"
		else
			state.CombatForm = nil
		end
	else
		state.CombatWeapon = nil
		state.CombatForm = nil
	end
end
function get_sets()
	sets.melee = {} 				-- Leave this empty.
	--sets.melee.normal = {} 
	sets.ws = {} 					-- Leave this empty.
	sets.ja = {} 					-- Leave this empty.
	sets.idle = {} 					-- Leave this empty.
	sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.casting)
    elseif sets.ja[spell.name] then
        equip(sets.ja[spell.name])        
    elseif sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end


function midcast(spell)
    local enfeebType = get_enfeeb_map(spell)
 
    if spell.name:match('Cure') or spell.name:match('Cura') then
        equip(sets.midcast.cure)
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.midcast.enfeebling[enfeebType])
    elseif spell.type == 'BlackMagic' then
        equip(sets.midcast[NukingMode.current]) 
    end
end


function aftercast(spell)

end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee.normal) 
    else
        equip(sets.idle.normal) 
    end
end

 
function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.melee.normal)
    else
        equip(sets.idle.normal)
    end
end
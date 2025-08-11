execute unless data storage ctarron:splits splits[0] run return run tellraw @a {"text":"No splits found!","color":"red"}
scoreboard players set total_time ctarron.splits.current 0
scoreboard players set split ctarron.splits.current 0
scoreboard players set total_time ctarron.splits.aux_timer 0
function ctarron.splits:ticks_to_time
function ctarron.splits:update_time with storage ctarron:splits aux_time
function ctarron.splits:splits/setup_sidebar
function ctarron.splits:tick
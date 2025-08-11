execute if score total_time ctarron.splits.current matches 2147483647 run return fail
scoreboard players add total_time ctarron.splits.current 1

scoreboard players operation total_time ctarron.splits.aux_timer = total_time ctarron.splits.current
function ctarron.splits:ticks_to_time
function ctarron.splits:update_time with storage ctarron:splits aux_time
schedule function ctarron.splits:tick 1t
execute if score ms ctarron.splits.current matches 2147483647 run return fail
execute store result score total_time ctarron.splits.current run stopwatch query ctarron.splits:time 1000

scoreboard players operation total_time ctarron.splits.aux_timer = total_time ctarron.splits.current
function ctarron.splits:ticks_to_time
function ctarron.splits:update_time with storage ctarron:splits aux_time
schedule function ctarron.splits:tick 1t
scoreboard players set total_time ctarron.splits.current 0
scoreboard players set split ctarron.splits.current 0
scoreboard players set total_time ctarron.splits.aux_timer 0
function ctarron.splits:ticks_to_time
function ctarron.splits:update_time with storage ctarron:splits aux_time
function ctarron.splits:splits/setup_sidebar
schedule clear ctarron.splits:tick

execute if score pb ctarron.splits.current matches 2147483647 run scoreboard players display numberformat PB ctarron.splits.split_display blank
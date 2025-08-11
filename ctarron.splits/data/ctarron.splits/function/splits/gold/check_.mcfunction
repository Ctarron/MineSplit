$execute store result score total_time ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].current
$execute store result score pb ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index_previous)].current
execute unless score split ctarron.splits.current matches 0 run scoreboard players operation total_time ctarron.splits.aux_timer -= pb ctarron.splits.aux_timer
$execute store result score pb ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].gold
$execute if data storage ctarron:splits times[$(index)].gold if score total_time ctarron.splits.aux_timer > pb ctarron.splits.aux_timer run return fail
$execute unless data storage ctarron:splits times[$(index)].gold store result storage ctarron:splits times[$(index)].gold int 1 run scoreboard players get total_time ctarron.splits.aux_timer

data modify storage ctarron:splits aux_time.pb[0] set value {"color":gold, "text":""}
$execute store result storage ctarron:splits times[$(index)].gold int 1 run scoreboard players get total_time ctarron.splits.aux_timer

$execute unless data storage ctarron:splits times[$(index)].pb run return run function ctarron.splits:splits/pb/no

$data modify storage ctarron:splits aux_time.name set from storage ctarron:splits splits[$(index)].name

$execute store result score total_time ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].current
$execute store result score pb ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].pb

scoreboard players operation total_time ctarron.splits.aux_timer -= pb ctarron.splits.aux_timer

execute if score total_time ctarron.splits.aux_timer matches 0.. run data modify storage ctarron:splits aux_time.pb set value [{"color":red, "text":""},"+"]
execute if score total_time ctarron.splits.aux_timer matches ..-1 run data modify storage ctarron:splits aux_time.pb set value [{"color":green, "text":""},"-"]
execute if score total_time ctarron.splits.aux_timer matches ..-1 run scoreboard players operation total_time ctarron.splits.aux_timer *= .-1 ctarron.splits.constant

function ctarron.splits:ticks_to_time
function ctarron.splits:splits/gold/check
execute if score h ctarron.splits.aux_timer matches 0 run data modify storage ctarron:splits aux_time.h set value [""]

function ctarron.splits:splits/pb/check_ with storage ctarron:splits aux_time

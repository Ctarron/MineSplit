scoreboard players add split ctarron.splits.current 1
scoreboard players operation split ctarron.splits.current *= .-1 ctarron.splits.constant
schedule clear ctarron.splits:tick

execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current

scoreboard players reset 4 ctarron.splits.split_display

execute if score total_time ctarron.splits.current < pb ctarron.splits.current run function ctarron.splits:splits/pb/new
scoreboard players set split ctarron.splits.current -1

data modify storage ctarron:splits aux_time.split set value "PB"
data modify storage ctarron:splits aux_time.name set value "PB"

scoreboard players operation total_time ctarron.splits.aux_timer = pb ctarron.splits.current
data modify storage ctarron:splits aux_time.pb set value [""]
function ctarron.splits:ticks_to_time
function ctarron.splits:splits/pb/update with storage ctarron:splits aux_time

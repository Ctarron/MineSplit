$execute store result storage ctarron:splits times[$(index)].pb int 1 run data get storage ctarron:splits times[$(index)].current
scoreboard players remove split ctarron.splits.current 1
execute if score split ctarron.splits.current matches -1 run return fail
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
function ctarron.splits:splits/pb/save with storage ctarron:splits aux_time

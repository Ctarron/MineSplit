execute store result storage ctarron:splits aux.index int 1 run scoreboard players get split ctarron.splits.current
scoreboard players remove split ctarron.splits.current 1
execute store result storage ctarron:splits aux.index_previous int 1 run scoreboard players get split ctarron.splits.current
scoreboard players add split ctarron.splits.current 1

function ctarron.splits:splits/gold/check_ with storage ctarron:splits aux
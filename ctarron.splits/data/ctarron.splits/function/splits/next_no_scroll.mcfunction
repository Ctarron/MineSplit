execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
execute store result storage ctarron:splits aux_time.split int 1 run scoreboard players get split ctarron.splits.current
execute if function ctarron.splits:save_split run return run function ctarron.splits:end
scoreboard players add split ctarron.splits.current 1
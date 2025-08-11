execute if score split ctarron.splits.current matches ..-1 run return fail
execute if score split ctarron.splits.current matches ..3 run return run function ctarron.splits:splits/next_no_scroll

scoreboard players remove split ctarron.splits.current 3
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
data modify storage ctarron:splits aux_time.split set value 0
function ctarron.splits:splits/pb/check with storage ctarron:splits aux_time
function ctarron.splits:splits/update_current with storage ctarron:splits aux_time

scoreboard players add split ctarron.splits.current 1
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
data modify storage ctarron:splits aux_time.split set value 1
function ctarron.splits:splits/pb/check with storage ctarron:splits aux_time
function ctarron.splits:splits/update_current with storage ctarron:splits aux_time

scoreboard players add split ctarron.splits.current 1
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
data modify storage ctarron:splits aux_time.split set value 2
function ctarron.splits:splits/pb/check with storage ctarron:splits aux_time
function ctarron.splits:splits/update_current with storage ctarron:splits aux_time

scoreboard players add split ctarron.splits.current 1
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
data modify storage ctarron:splits aux_time.split set value 3
execute if function ctarron.splits:save_split run return run function ctarron.splits:end

scoreboard players add split ctarron.splits.current 1
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
data modify storage ctarron:splits aux_time.split set value 4
function ctarron.splits:splits/update_default with storage ctarron:splits aux_time

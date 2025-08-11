# aux_time{split (row in the sidebar), index (index of the split)}
function ctarron.splits:splits/save_current with storage ctarron:splits aux_time
function ctarron.splits:splits/pb/check with storage ctarron:splits aux_time

function ctarron.splits:splits/update_current with storage ctarron:splits aux_time

scoreboard players add split ctarron.splits.current 1
execute store result storage ctarron:splits aux_time.index int 1 run scoreboard players get split ctarron.splits.current
function ctarron.splits:splits/check_if_last with storage ctarron:splits aux_time
execute if score split ctarron.splits.current matches ..-1 run return 1
scoreboard players remove split ctarron.splits.current 1
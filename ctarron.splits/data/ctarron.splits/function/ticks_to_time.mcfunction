scoreboard players operation ms ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer
scoreboard players operation ms ctarron.splits.aux_timer %= .1000 ctarron.splits.constant
scoreboard players operation s ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer
scoreboard players operation s ctarron.splits.aux_timer /= .1000 ctarron.splits.constant
scoreboard players operation m ctarron.splits.aux_timer = s ctarron.splits.aux_timer
scoreboard players operation m ctarron.splits.aux_timer /= .60 ctarron.splits.constant
scoreboard players operation s ctarron.splits.aux_timer %= .60 ctarron.splits.constant
scoreboard players operation h ctarron.splits.aux_timer = m ctarron.splits.aux_timer
scoreboard players operation h ctarron.splits.aux_timer /= .60 ctarron.splits.constant
scoreboard players operation m ctarron.splits.aux_timer %= .60 ctarron.splits.constant


execute store result storage ctarron:splits aux_time.h int 1 run scoreboard players get h ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.m int 1 run scoreboard players get m ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.s int 1 run scoreboard players get s ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.ms int 1 run scoreboard players get ms ctarron.splits.aux_timer

function ctarron.splits:aux_int_to_format with storage ctarron:splits aux_time

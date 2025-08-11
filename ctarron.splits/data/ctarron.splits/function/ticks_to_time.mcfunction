scoreboard players operation h ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer
scoreboard players operation m ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer
scoreboard players operation s ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer
scoreboard players operation t ctarron.splits.aux_timer = total_time ctarron.splits.aux_timer

scoreboard players operation h ctarron.splits.aux_timer /= .hour_ticks ctarron.splits.constant

scoreboard players operation m ctarron.splits.aux_timer %= .hour_ticks ctarron.splits.constant
scoreboard players operation m ctarron.splits.aux_timer /= .minutes_ticks ctarron.splits.constant

scoreboard players operation s ctarron.splits.aux_timer %= .minutes_ticks ctarron.splits.constant
scoreboard players operation s ctarron.splits.aux_timer /= .seconds_ticks ctarron.splits.constant

scoreboard players operation t ctarron.splits.aux_timer %= .seconds_ticks ctarron.splits.constant
scoreboard players operation t ctarron.splits.aux_timer *= .50 ctarron.splits.constant


execute store result storage ctarron:splits aux_time.h int 1 run scoreboard players get h ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.m int 1 run scoreboard players get m ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.s int 1 run scoreboard players get s ctarron.splits.aux_timer
execute store result storage ctarron:splits aux_time.t int 0.1 run scoreboard players get t ctarron.splits.aux_timer

function ctarron.splits:aux_int_to_format with storage ctarron:splits aux_time

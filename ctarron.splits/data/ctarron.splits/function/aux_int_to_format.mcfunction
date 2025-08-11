$data modify storage ctarron:splits aux_time.s set value ["$(s)"]
execute if score s ctarron.splits.aux_timer matches 0..9 run data modify storage ctarron:splits aux_time.s prepend value "0"
$data modify storage ctarron:splits aux_time.m set value ["$(m):"]
execute if score m ctarron.splits.aux_timer matches 0..9 run data modify storage ctarron:splits aux_time.m prepend value "0"
$data modify storage ctarron:splits aux_time.h set value ["$(h):"]
execute if score h ctarron.splits.aux_timer matches 1..9 run data modify storage ctarron:splits aux_time.h prepend value " "
execute if score h ctarron.splits.aux_timer matches 0 run data modify storage ctarron:splits aux_time.h set value ["   "]
execute if score m ctarron.splits.aux_timer matches 0..9 if score h ctarron.splits.aux_timer matches 0 run data remove storage ctarron:splits aux_time.m[0]
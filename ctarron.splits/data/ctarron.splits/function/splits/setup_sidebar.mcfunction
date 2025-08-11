scoreboard objectives setdisplay sidebar ctarron.splits.split_display

scoreboard players reset 0 ctarron.splits.split_display
scoreboard players reset 1 ctarron.splits.split_display
scoreboard players reset 2 ctarron.splits.split_display
scoreboard players reset 3 ctarron.splits.split_display
scoreboard players reset 4 ctarron.splits.split_display


execute unless data storage ctarron:splits splits[0] run return run tellraw @a {"text":"No splits found!","color":"red"}

data modify storage ctarron:splits aux_time.split set value 0
scoreboard players set 0 ctarron.splits.split_display 5
function ctarron.splits:splits/update_default {index: 0}

execute unless data storage ctarron:splits splits[1] run return fail
scoreboard players set 1 ctarron.splits.split_display 4
data modify storage ctarron:splits aux_time.split set value 1
function ctarron.splits:splits/update_default {index: 1}

execute unless data storage ctarron:splits splits[2] run return fail
scoreboard players set 2 ctarron.splits.split_display 3
data modify storage ctarron:splits aux_time.split set value 2
function ctarron.splits:splits/update_default {index: 2}

execute unless data storage ctarron:splits splits[3] run return fail
scoreboard players set 3 ctarron.splits.split_display 2
data modify storage ctarron:splits aux_time.split set value 3
function ctarron.splits:splits/update_default {index: 3}

execute unless data storage ctarron:splits splits[4] run return fail
scoreboard players set 4 ctarron.splits.split_display 1
data modify storage ctarron:splits aux_time.split set value 4
function ctarron.splits:splits/update_default {index: 4}


data modify storage ctarron:splits aux_time.split set value PB
data modify storage ctarron:splits aux_time.name set value "PB"

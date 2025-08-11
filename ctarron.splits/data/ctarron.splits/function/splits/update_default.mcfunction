# aux_time{split (row in the sidebar), index (index of the split)}

$execute store result score total_time ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].pb
function ctarron.splits:ticks_to_time
$execute unless data storage ctarron:splits times[$(index)].pb run data merge storage ctarron:splits {aux_time:{h:[""], m:[""], s:[""]}}
data modify storage ctarron:splits aux_time.pb set value [""]
$data modify storage ctarron:splits aux_time.name set from storage ctarron:splits splits[$(index)].name
function ctarron.splits:splits/update_ with storage ctarron:splits aux_time
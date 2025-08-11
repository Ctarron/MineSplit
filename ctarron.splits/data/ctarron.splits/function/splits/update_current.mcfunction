# aux_time{split (row in the sidebar), index (index of the split)}
$execute store result score total_time ctarron.splits.aux_timer run data get storage ctarron:splits times[$(index)].current
function ctarron.splits:ticks_to_time
$data modify storage ctarron:splits aux_time.name set from storage ctarron:splits splits[$(index)].name
function ctarron.splits:splits/update_ with storage ctarron:splits aux_time
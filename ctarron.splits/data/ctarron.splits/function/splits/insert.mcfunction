$data modify storage ctarron:splits splits insert $(index) value {name:"$(name)"}
$data modify storage ctarron:splits times insert $(index) value {current:0}
function ctarron.splits:setup
tellraw @p [{"fallback":"Existing splits in order:\n       ","translate":"ctarron.split.list"},{"nbt":"splits","storage":"ctarron:splits"}]
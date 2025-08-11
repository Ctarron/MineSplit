$data modify storage ctarron:splits splits append value {name:"$(name)"}
data modify storage ctarron:splits times append value {current:0}
function ctarron.splits:setup
tellraw @p [{"fallback":"Existing splits in order:\n       ","translate":"ctarron.split.list"},{"nbt":"splits","storage":"ctarron:splits"}]
data modify storage ctarron:splits splits set value []
data modify storage ctarron:splits times set value []
scoreboard players set pb ctarron.splits.current 2147483647
tellraw @p [{"fallback":"Existing splits in order:\n       ","translate":"ctarron.split.list"},{"nbt":"splits","storage":"ctarron:splits"}]
function ctarron.splits:setup
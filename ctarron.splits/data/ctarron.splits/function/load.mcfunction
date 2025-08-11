execute if data storage ctarron:splits splits run return fail
scoreboard objectives add ctarron.splits.aux_timer dummy
scoreboard objectives add ctarron.splits.split_display dummy
scoreboard objectives modify ctarron.splits.split_display displayname [{text:"MineSplit",color:gold},{text:" by Ctarron",color:gray}]
scoreboard objectives add ctarron.splits.current dummy
scoreboard objectives add ctarron.splits.constant dummy
scoreboard players set .50 ctarron.splits.constant 50
scoreboard players set .hour_ticks ctarron.splits.constant 72000
scoreboard players set .minutes_ticks ctarron.splits.constant 1200
scoreboard players set .seconds_ticks ctarron.splits.constant 20
scoreboard players set .-1 ctarron.splits.constant -1

scoreboard players set time ctarron.splits.split_display -1
scoreboard players display name time ctarron.splits.split_display ""
scoreboard players set PB ctarron.splits.split_display -2
scoreboard players set blank ctarron.splits.split_display 0
scoreboard players display name blank ctarron.splits.split_display ""
scoreboard players display numberformat blank ctarron.splits.split_display blank
scoreboard players set blank. ctarron.splits.split_display 10
scoreboard players display name blank. ctarron.splits.split_display ""
scoreboard players display numberformat blank. ctarron.splits.split_display blank
execute unless score pb ctarron.splits.current matches 0.. run scoreboard players set pb ctarron.splits.current 2147483647

data merge storage ctarron:splits {aux: {name: "$(name)", index: 0, index_dialog: "$(index_dialog)", index_previous: -1, n: 0}, aux_time: {pb: [""], s: [""], split: "", t: {color: "green", bold: 0b, text: ".00"}, h: ["   "], name: "", index: 0, time: 22988, m: ["0:"], n: 1}}
data merge storage ctarron:splits {times: [], splits: []}
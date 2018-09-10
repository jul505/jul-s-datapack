execute if entity @a[scores={ft.dead=1},nbt={Dimension:0}] run tellraw @a[scores={ft.dead=1}] [{"text":"You died on "},{"text":"[X:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_x"},"color":"green"},{"text":" "},{"text":"Y:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_y"},"color":"green"},{"text":" "},{"text":"Z:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_z"},"color":"green"},{"text":"]","color":"green"},{"text":"\nDimension: Overworld"}]
execute if entity @a[scores={ft.dead=1},nbt={Dimension:-1}] run tellraw @a[scores={ft.dead=1}] [{"text":"You died on" },{"text":"[X:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_x"},"color":"green"},{"text":" "},{"text":"Y:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_y"},"color":"green"},{"text":" "},{"text":"Z:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_z"},"color":"green"},{"text":"]","color":"green"},{"text":"\nDimension: Nether"}]
execute if entity @a[scores={ft.dead=1},nbt={Dimension:1}] run tellraw @a[scores={ft.dead=1}] [{"text":"You died on "},{"text":"[X:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_x"},"color":"green"},{"text":" "},{"text":"Y:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_y"},"color":"green"},{"text":" "},{"text":"Z:","color":"green"},{"score":{"name":"*","objective":"ft.coordinats_z"},"color":"green"},{"text":"]","color":"green"},{"text":"\nDimension: The End"}]



scoreboard players reset @a[scores={ft.dead=1}] ft.dead
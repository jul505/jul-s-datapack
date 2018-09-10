################################### Armure en Or #########################################
effect give @a[nbt={Inventory:[{Slot:103b, id: "minecraft:golden_helmet"}]}] minecraft:night_vision 11 0 true
effect give @a[nbt={Inventory:[{Slot:102b, id: "minecraft:golden_chestplate"}]}] minecraft:haste 11 1 true
effect give @a[nbt={Inventory:[{Slot:101b, id: "minecraft:golden_leggings"}]}] minecraft:health_boost 11 4 true


execute as @a[nbt={Inventory:[{Slot:100b,id: "minecraft:golden_boots"}]}] at @s if block ~2 ~-0.5 ~-2 minecraft:lava[level=0] run summon area_effect_cloud ~2 ~-1 ~-2 {Tags:["LavaWalkerCloud"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @a[nbt={Inventory:[{Slot:100b,id: "minecraft:golden_boots"}]}] at @s if block ~-2 ~-0.5 ~2 minecraft:lava[level=0] run summon area_effect_cloud ~-2 ~-1 ~2 {Tags:["LavaWalkerCloud"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @a[nbt={Inventory:[{Slot:100b,id: "minecraft:golden_boots"}]}] at @s if block ~-2 ~-0.5 ~-2 minecraft:lava[level=0] run summon area_effect_cloud ~-2 ~-1 ~-2 {Tags:["LavaWalkerCloud"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @a[nbt={Inventory:[{Slot:100b,id: "minecraft:golden_boots"}]}] at @s if block ~2 ~-0.5 ~2 minecraft:lava[level=0] run summon area_effect_cloud ~2 ~-1 ~2 {Tags:["LavaWalkerCloud"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[type=minecraft:area_effect_cloud,tag=LavaWalkerCloud,nbt={Age:200}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:cobblestone replace lava[level=0]
execute as @e[type=minecraft:area_effect_cloud,tag=LavaWalkerCloud,nbt={Age:250}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:magma_block replace cobblestone
execute as @e[type=minecraft:area_effect_cloud,tag=LavaWalkerCloud,nbt={Age:300}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:lava[level=0] replace magma_block



################################### Autres #########################################

effect give @a[nbt={Inventory:[{Slot:102b, id: "minecraft:elytra"}]}] minecraft:jump_boost 11 3 true

effect give @a[nbt={Inventory:[{Slot:-106b, id: "minecraft:shield"}]}] minecraft:resistance 11 1 true

################################### Armure en iron #########################################
effect clear @a[nbt={Inventory:[{Slot:103b, id: "minecraft:iron_helmet"}]}] minecraft:poison
effect give @a[nbt={Inventory:[{Slot:102b, id: "minecraft:iron_chestplate"}]}] minecraft:health_boost 11 1 true
effect give @a[nbt={Inventory:[{Slot:101b, id: "minecraft:iron_leggings"}]}] minecraft:speed 11 0 true


################################### Armure en chainmail #########################################
execute at @a[nbt={Inventory:[{Slot:103b,id: "minecraft:chainmail_helmet"},{Slot:102b,id: "minecraft:chainmail_chestplate"},{Slot:101b,id: "minecraft:chainmail_leggings"},{Slot:100b,id: "minecraft:chainmail_boots"}]}] at @s as @e[distance=0.1..5] at @s run effect give @s minecraft:slowness 3 2 true
execute at @a[nbt={Inventory:[{Slot:103b,id: "minecraft:chainmail_helmet"},{Slot:102b,id: "minecraft:chainmail_chestplate"},{Slot:101b,id: "minecraft:chainmail_leggings"},{Slot:100b,id: "minecraft:chainmail_boots"}]}] at @s as @e[distance=0.1..5] at @s run effect give @s minecraft:weakness 3 0 true



################################### Armure en cuir #########################################
effect give @a[nbt={Inventory:[{Slot:103b, id: "minecraft:leather_helmet"}]}] minecraft:luck 11 5 true
effect give @a[nbt={Inventory:[{Slot:101b, id: "minecraft:leather_leggings"}]}] minecraft:speed 11 1 true
effect give @a[nbt={Inventory:[{Slot:100b, id: "minecraft:leather_boots"}]}] minecraft:jump_boost 11 6 true

#Poison
execute as @a[scores={DamageDealt=1..},nbt={Inventory:[{Slot:103b, id: "minecraft:leather_helmet"}]}] at @s run effect give @e[distance=..7,type=!player] poison 5 0

#Life Steal
effect give @a[scores={DamageDealt=1..},nbt={Inventory:[{Slot:102b, id: "minecraft:leather_chestplate"}]}] minecraft:regeneration 5 0 true

#hit_effect Reset
scoreboard players set @a[scores={DamageDealt=1..}] DamageDealt 0

################################### Hache diamant #########################################

execute as @a[nbt={SelectedItem:{id: "minecraft:diamond_axe", tag:{Enchantments:[{id: "minecraft:fortune", lvl:3s}]}}}] at @s run function custom:timber

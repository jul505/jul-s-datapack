#Si on utilse une hache en diamant sa met le tag "Timber".
tag @a[scores={mineDA=1..}] add TimberUse

#System
execute as @a[tag=TimberUse] at @s as @e[type=item,distance=..50,tag=!TimberDetection] run scoreboard players add @s Timberbreak 1
execute as @e[scores={Timberbreak=1}] at @s if block ~ ~1 ~ #minecraft:logs run summon area_effect_cloud ~ ~1 ~ {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[scores={Timberbreak=1}] at @s if block ~ ~-1 ~ #minecraft:logs run summon area_effect_cloud ~ ~-1 ~ {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[scores={Timberbreak=1}] at @s if block ~1 ~ ~ #minecraft:logs run summon area_effect_cloud ~1 ~ ~ {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[scores={Timberbreak=1}] at @s if block ~-1 ~ ~ #minecraft:logs run summon area_effect_cloud ~-1 ~ ~ {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[scores={Timberbreak=1}] at @s if block ~ ~ ~1 #minecraft:logs run summon area_effect_cloud ~ ~ ~1 {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[scores={Timberbreak=1}] at @s if block ~ ~ ~-1 #minecraft:logs run summon area_effect_cloud ~ ~ ~-1 {Tags:["TimberLogs"],Duration:200,DurationOnUse:200f,Age:199,WaitTime:200}
execute as @e[type=area_effect_cloud,tag=TimberLogs] at @s as @p[tag=TimberUse] at @s run scoreboard players set @s TimeTimber 3

#Destruction de arbre
execute as @e[tag=TimberLogs,nbt={Age:200}] at @s if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=TimberLogs] at @s unless block ~ ~ ~ #minecraft:logs run kill @s

#Resets
execute as @e[tag=TimberLogs,nbt={Age:201}] at @s run kill @s
tag @e[type=item,scores={Timberbreak=2..}] add TimberDetection
scoreboard players set @a[scores={mineDA=1..}] mineDA 0
scoreboard players remove @a[scores={TimeTimber=1..}] TimeTimber 1
tag @a[tag=TimberUse] remove TimberUse
tag @a[scores={TimeTimber=1..}] add TimberUse

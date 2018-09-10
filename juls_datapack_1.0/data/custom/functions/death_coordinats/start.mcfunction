execute as @a store result score @s ft.coordinats_x run data get entity @s Pos[0]
execute as @a store result score @s ft.coordinats_y run data get entity @s Pos[1]
execute as @a store result score @s ft.coordinats_z run data get entity @s Pos[2]


execute if score @p ft.dead matches 1.. run function custom:death_coordinats/message

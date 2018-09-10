execute as @a if score @s dimension matches 1..1 if score @s position < @s endLimit run execute positioned as @s in overworld run tp @s ~ 350 ~
execute as @a if score @s dimension matches 0..0 if score @s position > @s overworldLimit run execute positioned as @s in the_end run tp @s ~ -10 ~

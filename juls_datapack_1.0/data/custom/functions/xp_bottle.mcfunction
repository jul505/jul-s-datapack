execute as @a[nbt={Inventory:[{Slot:-106b, id: "minecraft:glass_bottle"}]}] at @s if entity @p[level=1..] if block ~ ~-1 ~ lapis_block run function custom:craft_experiencebottle



execute as @s[predicate=betterhalo:is_sneaking] run tag @s add sneaking_press
execute at @s[predicate=!betterhalo:is_sneaking,tag=sneaking_press] run particle wax_off ~ ~1.25 ~ 0.4 0.7 0.4 1 6 normal
execute at @s[predicate=!betterhalo:is_sneaking,tag=sneaking_press] run tag @a[distance=..39,tag=!sneaking_press] add recieved_heal
execute as @a[tag=recieved_heal] run effect give @s minecraft:regeneration 2 1 true
execute at @a[tag=recieved_heal] run particle minecraft:happy_villager ~ ~1.25 ~ 0.5 0.7 0.5 1 5 normal
execute as @a[tag=recieved_heal] run tag @s remove recieved_heal
execute at @s[predicate=!betterhalo:is_sneaking,tag=sneaking_press] run tag @s remove sneaking_press

execute store result score @s health run data get entity @s Health

execute as @s[scores={health=..5,cooldown_a=0}] run tag @s add helped_by_fans
execute as @s[tag=helped_by_fans] run title @s actionbar [{"text": "you recieved help from "}, {"text": "Fans", "color": "aqua"}]
execute as @s[tag=helped_by_fans] run effect give @s minecraft:regeneration 2 6 true
execute as @s[tag=helped_by_fans] run effect give @s minecraft:fire_resistance 200 1 true
execute as @s[tag=helped_by_fans] run effect give @s minecraft:resistance 2 4 true
execute as @s[tag=helped_by_fans] run scoreboard players set @s cooldown_a 500
execute as @s[tag=helped_by_fans] run tag @s remove helped_by_fans
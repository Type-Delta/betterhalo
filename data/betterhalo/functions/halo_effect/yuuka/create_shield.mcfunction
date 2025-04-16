

execute as @s[tag=!creating_shield] run scoreboard players set @s cooldown_a_2t 6
execute as @s[tag=!creating_shield] run tag @s add creating_shield


## stage 1 - base & ceiling
# base
execute at @s[tag=creating_shield,scores={cooldown_a_2t=5}] run fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=5}] run fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:birch_leaves replace minecraft:air

# ceiling
execute at @s[tag=creating_shield,scores={cooldown_a_2t=5}] run fill ~-1 ~3 ~ ~1 ~3 ~ minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=5}] run fill ~ ~3 ~-1 ~ ~3 ~1 minecraft:birch_leaves replace minecraft:air

# summon minecraft:armor_stand ~ ~4 ~ {NoGravity: 1b,Invisible: 1b,YuukaShieldCore: 1b}



## stage 2 - side1
execute at @s[tag=creating_shield,scores={cooldown_a_2t=4}] run fill ~2 ~ ~ ~2 ~2 ~ minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=4}] run fill ~2 ~1 ~-1 ~2 ~1 ~1 minecraft:birch_leaves replace minecraft:air


## stage 3 - side2
execute at @s[tag=creating_shield,scores={cooldown_a_2t=3}] run fill ~ ~ ~2 ~ ~2 ~2 minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=3}] run fill ~-1 ~1 ~2 ~1 ~1 ~2 minecraft:birch_leaves replace minecraft:air


## stage 4 - side3
execute at @s[tag=creating_shield,scores={cooldown_a_2t=2}] run fill ~-2 ~ ~ ~-2 ~2 ~ minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=2}] run fill ~-2 ~1 ~-1 ~-2 ~1 ~1 minecraft:birch_leaves replace minecraft:air


## stage 5 - side4
execute at @s[tag=creating_shield,scores={cooldown_a_2t=1}] run fill ~ ~ ~-2 ~ ~2 ~-2 minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=1}] run fill ~-1 ~1 ~-2 ~1 ~1 ~-2 minecraft:birch_leaves replace minecraft:air



## stage 6 - pillars
execute at @s[tag=creating_shield,scores={cooldown_a_2t=0}] run fill ~1 ~ ~1 ~1 ~2 ~1 minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=0}] run fill ~-1 ~ ~1 ~-1 ~2 ~1 minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=0}] run fill ~1 ~ ~-1 ~1 ~2 ~-1 minecraft:birch_leaves replace minecraft:air
execute at @s[tag=creating_shield,scores={cooldown_a_2t=0}] run fill ~-1 ~ ~-1 ~-1 ~2 ~-1 minecraft:birch_leaves replace minecraft:air

# negative fill
execute at @s[tag=creating_shield,scores={cooldown_a_2t=0}] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 minecraft:air replace minecraft:birch_leaves


## reset
execute as @s[tag=creating_shield,scores={cooldown_a_2t=0}] run scoreboard players set @s cooldown_a 500
execute as @s[tag=creating_shield,scores={cooldown_a_2t=0}] run tag @s remove shield_active
execute as @s[tag=creating_shield,scores={cooldown_a_2t=0}] run tag @s remove creating_shield
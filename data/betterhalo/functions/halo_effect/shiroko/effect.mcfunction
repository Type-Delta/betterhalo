

execute if entity @s[team=!team_shiroko] run team join team_shiroko @s
execute at @s as @e[type=!minecraft:player,type=!minecraft:item,type=!#betterhalo:block_entity,distance=..20] run execute store result score @s angertime run data get entity @s AngerTime

# calculate entity's health predicate
# clipboad1 = (Health * 2)
# clipboad1 = clipboad1 > MaxHealth? MaxHealth: clipboad1 // MC `<` operator works in oposite way u'd expect
# clipboad1 = clipboad1 % MaxHealth // 0 if clipboad1 is equal to MaxHealth
# see https://minecraft.fandom.com/wiki/Scoreboard
execute as @e[scores={angertime=1..}] run execute store result score @s clipboad1 run data get entity @s Health
execute as @e[scores={angertime=1..}] run execute store result score @s health run attribute @s generic.max_health get
execute as @e[scores={angertime=1..}] run scoreboard players set @s clipboad2 2
execute as @e[scores={angertime=1..}] run scoreboard players operation @s clipboad1 *= @s clipboad2
execute as @e[scores={angertime=1..}] run scoreboard players operation @s clipboad1 < @s health
execute as @e[scores={angertime=1..}] run scoreboard players operation @s clipboad1 %= @s health

# clipboad1 determines if entity has health less than 50% of max health
# if 0 (false) means entity has health more than 50% of max health
execute as @e[scores={angertime=1..,clipboad1=0}] run team join team_shiroko @s

# conditions for entity to leave team_shiroko
# - entity is 21 blocks away from player with shiroko halo
# - entity has health lower than 50% of max health
execute at @s as @e[team=team_shiroko,type=!minecraft:player,distance=21..] run team leave @s
execute as @e[team=team_shiroko,type=!minecraft:player,scores={clipboad1=1..}] run team leave @s

# reset scoreboards
execute as @e[scores={angertime=1..}] run scoreboard players reset @s clipboad1
execute as @e[scores={angertime=1..}] run scoreboard players reset @s clipboad2
execute as @e[scores={angertime=1..}] run scoreboard players reset @s health
execute as @e[scores={angertime=0}] run scoreboard players reset @s angertime
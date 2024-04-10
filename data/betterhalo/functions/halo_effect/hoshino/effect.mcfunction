

execute as @s[tag=!can_wear_armor] run tag @s add can_wear_armor


execute store result score @s sleeptime run data get entity @s SleepTimer
execute if entity @s[scores={sleeptime=1..}] run gamerule playersSleepingPercentage 1
execute at @s if entity @s[scores={sleeptime=1..}] run spawnpoint @s ~ ~ ~
execute unless entity @s[scores={sleeptime=1..}] run gamerule playersSleepingPercentage 100
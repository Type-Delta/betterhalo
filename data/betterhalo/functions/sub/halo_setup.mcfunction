
tag @s add halouser

scoreboard players set @s clipboad_t1 1
execute unless entity @s[scores={cooldown_a=0..2147483647}] run scoreboard players set @s cooldown_a 0

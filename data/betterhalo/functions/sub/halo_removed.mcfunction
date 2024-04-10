
tag @s remove halouser

scoreboard players reset @s clipboad_t1
scoreboard players reset @s clipboad1
scoreboard players reset @s clipboad2
scoreboard players reset @s count
execute if entity @s[team=team_shiroko] run team leave @s

execute as @s[tag=can_wear_armor] run tag @s remove can_wear_armor

# reset selfrepair effect
execute as @s[tag=selfrepair] run function betterhalo:halo_effect/alice/selfrepair_reset


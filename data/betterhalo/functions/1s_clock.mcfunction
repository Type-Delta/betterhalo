

execute as @a[tag=halouser,scores={cooldown_a=1..}] run scoreboard players operation @s cooldown_a -= @s clipboad_t1

# display debug console
execute as @a[tag=dbc] run function betterhalo:sub/show_debug_cosole


schedule function betterhalo:1s_clock 1s replace
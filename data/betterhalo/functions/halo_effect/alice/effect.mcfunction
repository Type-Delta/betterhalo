

execute unless predicate betterhalo:wears_armor run effect give @s strength 1 1 true
effect give @s haste 1 0 true
execute store result score @s health run data get entity @s Health


execute as @s[tag=!can_wear_armor] run tag @s add can_wear_armor


## repair init
# function stores the health (at the moment of repair init) to check if it has changed
execute as @s[scores={health=..14},tag=!selfrepair,tag=!selfrepair_cooldown] run function betterhalo:halo_effect/alice/selfrepair_init


## repair pending
execute as @s[tag=selfrepair_pending,scores={cooldown_a=0}] run tag @s add selfrepair_active
execute as @s[tag=selfrepair_pending,scores={cooldown_a=0}] run title @s actionbar {"text":"Structure damage analyzed, Initiating SelfRepair program...","color":"gray","italic": true}
execute as @s[tag=selfrepair_pending,scores={cooldown_a=0}] run scoreboard players set @s cooldown_a 15
execute as @s[tag=selfrepair_active] run tag @s remove selfrepair_pending


## repair active
execute as @s[tag=selfrepair_active,scores={health=13..14,cooldown_a=15}] run effect give @s minecraft:absorption 4000 0 true
execute as @s[tag=selfrepair_active,scores={health=9..12,cooldown_a=15}] run effect give @s minecraft:absorption 4000 1 true
execute as @s[tag=selfrepair_active,scores={health=5..8,cooldown_a=15}] run effect give @s minecraft:absorption 4000 2 true
execute as @s[tag=selfrepair_active,scores={health=1..4,cooldown_a=15}] run effect give @s minecraft:absorption 4000 3 true

execute as @s[tag=selfrepair_active,scores={cooldown_a=14}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▁▁▁▁▁▁▁ ","color":"dark_red"},{"text":" 7.1%","color":"dark_red"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=13}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▁▁▂▂▁▁▂ ","color":"dark_red"},{"text":"11.7%","color":"dark_red"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=12}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▁▁▂▂▁▂▅ ","color":"dark_red"},{"text":"19.3%","color":"dark_red"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=11}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▂▁▃▂▁▃▅ ","color":"red"},{"text":"29.2%","color":"red"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=10}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▂▃▃▂▁▃▅ ","color":"red"},{"text":"33.5%","color":"red"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=9}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▂▃▇▂▁▃▆ ","color":"gold"},{"text":"37.0%","color":"gold"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=8}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▂▄▇▄▂▃▆ ","color":"gold"},{"text":"46.7%","color":"gold"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=7}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▂▅▇▆▄▃█ ","color":"gold"},{"text":"54.3%","color":"gold"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=6}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▄▅▇▇▆▃█ ","color":"gold"},{"text":"58.9%","color":"gold"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=5}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▅▅▇▇▆▅█ ","color":"yellow"},{"text":"64.0%","color":"yellow"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=4}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▇▅▇█▆▅█ ","color":"yellow"},{"text":"78.8%","color":"yellow"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=3}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▇▆▇█▆▆█ ","color":"green"},{"text":"86.1%","color":"green"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=2}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ▇▇██▇▆█ ","color":"green"},{"text":"91.1%","color":"green"}]
execute as @s[tag=selfrepair_active,scores={cooldown_a=1}] run title @s actionbar ["",{"text":"Repairing... ","color":"gray"},{"text":"      ███████ ","color":"green"},{"text":"99.9%","color":"green"}]





## repair cooldown
execute as @s[tag=selfrepair_active,scores={cooldown_a=0}] run tag @s add selfrepair_cooldown
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=15..16}] run scoreboard players set @s cooldown_a 80
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=13..14}] run scoreboard players set @s cooldown_a 82
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=11..12}] run scoreboard players set @s cooldown_a 84
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=9..10}] run scoreboard players set @s cooldown_a 90
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=7..8}] run scoreboard players set @s cooldown_a 94
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=5..6}] run scoreboard players set @s cooldown_a 107
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=3..4}] run scoreboard players set @s cooldown_a 112
execute as @s[tag=selfrepair_active,scores={cooldown_a=0,health=1..2}] run scoreboard players set @s cooldown_a 126




# calculate at what cooldown_a the "SelfRepair complete" message should stop displaying
# result stored in clipboad2
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run scoreboard players set @s count 6
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run scoreboard players operation @s clipboad2 = @s cooldown_a
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run scoreboard players operation @s clipboad2 -= @s count

# store snapshot of the cooldown_a to display the correct "SelfRepair complete" message
# result stored in count
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run scoreboard players operation @s count = @s cooldown_a

# initiate clipboad1 as 0 for the "SelfRepair complete" message to display
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run scoreboard players set @s clipboad1 0


execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown] run effect clear @s minecraft:absorption
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=15..16}] run effect give @s minecraft:regeneration 8 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=13..14}] run effect give @s minecraft:regeneration 10 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=11..12}] run effect give @s minecraft:regeneration 12 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=9..10}] run effect give @s minecraft:regeneration 14 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=7..8}] run effect give @s minecraft:regeneration 16 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=5..6}] run effect give @s minecraft:regeneration 18 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=3..4}] run effect give @s minecraft:regeneration 20 1 true
execute as @s[tag=selfrepair_active,tag=selfrepair_cooldown,scores={health=1..2}] run effect give @s minecraft:regeneration 22 1 true

execute as @s[tag=selfrepair_cooldown,tag=selfrepair_active] run tag @s remove selfrepair_active


# compare the cooldown_a with the clipboad2 to check if the "SelfRepair complete" message should stop displaying
# result stored in clipboad1, falsty: keep msg displayed, truthy: stop displaying
# checking clipboad1 to prevent the calculation from running the second time
execute as @s[tag=selfrepair_cooldown,scores={clipboad1=0..,cooldown_a=1..}] run scoreboard players operation @s clipboad1 = @s clipboad2
execute as @s[tag=selfrepair_cooldown,scores={clipboad1=0..,cooldown_a=1..}] run scoreboard players operation @s clipboad1 > @s cooldown_a
execute as @s[tag=selfrepair_cooldown,scores={clipboad1=0..,cooldown_a=1..}] run scoreboard players operation @s clipboad1 %= @s cooldown_a

# if clipboad1 is truthy, set them to -1 to stop displaying the "SelfRepair complete" message
execute as @s[tag=selfrepair_cooldown,scores={clipboad1=1..,cooldown_a=1..}] run scoreboard players set @s clipboad1 -1


execute as @s[tag=selfrepair_cooldown,scores={clipboad1=0}] run title @s actionbar ["",{"text":"SelfRepair complete, regenerating nano materials (ETR:","color":"gray"},{"score":{"name":"@s","objective":"count"},"color":"gray"},{"text":"e+6µs)","color":"gray"}]

# when cooldown ends
execute as @s[tag=selfrepair_cooldown,scores={cooldown_a=0}] run tag @s remove selfrepair
execute as @s[tag=selfrepair_cooldown,scores={cooldown_a=0}] run scoreboard players reset @s clipboad1
execute as @s[tag=selfrepair_cooldown,scores={cooldown_a=0}] run scoreboard players reset @s clipboad2
execute as @s[tag=selfrepair_cooldown,scores={cooldown_a=0}] run scoreboard players reset @s count
execute as @s[tag=selfrepair_cooldown,scores={cooldown_a=0}] run tag @s remove selfrepair_cooldown





## repair reset
# reset if the user's health is above 12 while on pending or active
execute as @s[tag=!selfrepair_cooldown,tag=selfrepair,scores={health=17..}] run tag @s add selfrepair_reset
execute as @s[tag=!selfrepair_cooldown,tag=selfrepair,scores={health=17..}] run tag @s add selfrepair_r_ovr

# reset if the user's health decrease while on pending or active
execute as @s[tag=!selfrepair_reset,tag=!selfrepair_cooldown,tag=selfrepair] run scoreboard players operation @s health < @s clipboad1
execute as @s[tag=!selfrepair_reset,tag=!selfrepair_cooldown,tag=selfrepair] run scoreboard players operation @s health %= @s clipboad1
execute as @s[tag=!selfrepair_reset,tag=!selfrepair_cooldown,tag=selfrepair,scores={health=1..}] run tag @s add selfrepair_r_dec
execute as @s[tag=!selfrepair_reset,tag=!selfrepair_cooldown,tag=selfrepair,scores={health=1..}] run tag @s add selfrepair_reset

execute as @s[tag=selfrepair_reset,tag=selfrepair_pending] run tag @s remove selfrepair_pending
execute as @s[tag=selfrepair_reset,tag=selfrepair_active] run effect clear @s minecraft:absorption
execute as @s[tag=selfrepair_reset,tag=selfrepair_active,tag=selfrepair_r_dec] run title @s actionbar ["", {"text":"SelfRepair sequence interrupted","color":"red","italic": true},{"text": "  >> ","bold": true,"color": "white"},{"text": "recovering...", "color": "gray"}]
execute as @s[tag=selfrepair_reset,tag=selfrepair_active,tag=selfrepair_r_ovr] run title @s actionbar ["", {"text":"Structure damage under threshold","color":"gray","italic": true},{"text": "  >> ","bold": true,"color": "white"},{"text": "cancel operation.", "color": "gray"}]
execute as @s[tag=selfrepair_reset,tag=selfrepair_active] run tag @s add selfrepair_cooldown
execute as @s[tag=selfrepair_reset,tag=selfrepair_active,tag=selfrepair_r_dec] run scoreboard players set @s cooldown_a 100
execute as @s[tag=selfrepair_reset,tag=selfrepair_active,tag=selfrepair_r_ovr] run scoreboard players set @s cooldown_a 20
execute as @s[tag=selfrepair_reset,tag=selfrepair_active] run tag @s remove selfrepair_active
execute as @s[tag=selfrepair_reset,tag=!selfrepair_cooldown] run scoreboard players reset @s cooldown_a
execute as @s[tag=selfrepair_reset] run scoreboard players reset @s clipboad1
execute as @s[tag=selfrepair_reset] run scoreboard players reset @s clipboad2
execute as @s[tag=selfrepair_reset] run scoreboard players reset @s count
execute as @s[tag=selfrepair_reset] run tag @s remove selfrepair
execute as @s[tag=selfrepair_reset] run tag @s remove selfrepair_r_ovr
execute as @s[tag=selfrepair_reset] run tag @s remove selfrepair_r_dec
execute as @s[tag=selfrepair_reset] run tag @s remove selfrepair_reset
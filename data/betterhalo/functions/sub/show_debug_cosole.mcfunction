

tellraw @s "\n---------------------"
execute as @s[tag=halouser] run tellraw @s ["",{"text":"Halo Active: ","color":"gray"},{"text": "true","color": "green"}]
execute as @s[tag=!halouser] run tellraw @s ["",{"text":"Halo Active: ","color":"gray"},{"text": "false","color": "red"}]



tellraw @s ["",{"text":"count: ","color":"gray"},{"score":{"name":"@s","objective":"count"},"color":"gold"},"\n",{"text":"clipboad1: ","color":"gray"},{"score":{"name":"@s","objective":"clipboad1"},"color":"gold"},"\n",{"text":"clipboad2: ","color":"gray"},{"score":{"name":"@s","objective":"clipboad2"},"color":"gold"},"\n",{"text":"cooldown_a: ","color":"gray"},{"score":{"name":"@s","objective":"cooldown_a"},"color":"gold"},"\n",{"text":"health: ","color":"gray"},{"score":{"name":"@s","objective":"health"},"color":"gold"},"\n",{"text":"falldistance: ","color":"gray"},{"score":{"name":"@s","objective":"falldistance"},"color":"gold"}]
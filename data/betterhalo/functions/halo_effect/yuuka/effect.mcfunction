
## 100kg shockwave
# falldistance = user.data.get("FallDistance")
# yuuka_target = world.entities.get(distance=..1.7,type=!#betterhalo:block_entity,type=!player)
# for target in yuuka_target:
#    health = target.data.get("Health")
#    target.data.set("Health", health - (falldistance * user.clipboad1))
#    if target.type == type.#betterhalo:undead:
#        target.effect.give("minecraft:instant_health", 1, 0, true)
#    else:
#        target.effect.give("minecraft:instant_damage", 1, 0, true)
#
# if falldistance >= 1:
#    word.createParticle("dust", user.position.translate(0, -1, 0))
#    if falldistance <= 3:
#        word.playSound("minecraft:entity.anvil.step", user.position.translate(0, -2, 0)).to(world.players)
# if falldistance >= 3:
#    word.createParticle("minecraft:firework", user.position.translate(0, -1, 0))
#    word.playSound("minecraft:entity.iron_golem.step", user.position.translate(0, -2, 0)).to(world.players)
execute store result score @s falldistance run data get entity @s FallDistance
scoreboard players set @s clipboad1 2
scoreboard players operation @s clipboad2 = @s falldistance
scoreboard players operation @s clipboad2 *= @s clipboad1

execute at @s if entity @s[scores={falldistance=3..}] run execute as @e[distance=..1.7,type=!#betterhalo:block_entity,type=!player] run tag @s add yuuka_target
execute as @e[tag=yuuka_target] run execute store result score @s health run data get entity @s Health
execute as @e[tag=yuuka_target] run execute at @e run scoreboard players operation @s health -= @a[scores={falldistance=3..},distance=..1.7] clipboad2
execute as @e[tag=yuuka_target] run execute store result entity @s Health float 1 run scoreboard players get @s health
execute as @e[tag=yuuka_target,type=#betterhalo:undead] run effect give @s minecraft:instant_health 1 0 true
execute as @e[tag=yuuka_target,type=!#betterhalo:undead] run effect give @s minecraft:instant_damage 1 0 true
execute as @e[tag=yuuka_target] run tag @s remove yuuka_target
scoreboard players reset @s clipboad1
scoreboard players reset @s clipboad2

# visual effects
execute at @a[scores={falldistance=1..}] unless block ~ ~-1 ~ air run particle dust 0.71 0.71 0.71 1 ~ ~ ~ 0.2 0.001 0.2 0 10 normal
execute at @a[scores={falldistance=3..}] unless block ~ ~-1 ~ air run particle minecraft:firework ~ ~ ~ 0.00001 0.0000001 0.00001 0.1 20 normal
execute as @a[scores={falldistance=3..}] at @s unless block ~ ~-1 ~ air run playsound minecraft:entity.iron_golem.step player @a ~ ~-2 ~ 7 0.7
execute as @a[scores={falldistance=1..3}] at @s unless block ~ ~-1 ~ air run playsound minecraft:block.anvil.step player @a ~ ~-2 ~ 1 0.6





## Q.E.D
execute as @a[tag=creating_shield] run function betterhalo:halo_effect/yuuka/create_shield

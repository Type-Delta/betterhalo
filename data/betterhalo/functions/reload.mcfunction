

tellraw @a[tag=dev] {"text": "Better Halo is loaded","color": "green"}

team add team_shiroko {"text":"Shiroko Team"}

scoreboard objectives add count dummy
scoreboard objectives add clipboad1 dummy
scoreboard objectives add clipboad2 dummy
# scoreboard objectives add clipboad3 dummy
scoreboard objectives add clipboad_t1 dummy
scoreboard objectives add cooldown_a dummy
scoreboard objectives add cooldown_a_2t dummy
scoreboard objectives add sleeptime dummy
scoreboard objectives add angertime dummy
scoreboard objectives add falldistance dummy
scoreboard objectives add health dummy
scoreboard objectives add death deathCount
scoreboard objectives add heal_received dummy

function betterhalo:1s_clock
function betterhalo:2t_clock


execute as @a unless entity @s[scores={cooldown_a=0..2147483647}] run scoreboard players set @s cooldown_a 0
execute as @a unless entity @s[scores={cooldown_a_2t=0..2147483647}] run scoreboard players set @s cooldown_a_2t 0
# scoreboard objectives add anger_time dummy
# scoreboard objectives add meding_time dummy
# scoreboard objectives add crouch_dis minecraft.custom:crouch_one_cm

# function mcs:1s_clock
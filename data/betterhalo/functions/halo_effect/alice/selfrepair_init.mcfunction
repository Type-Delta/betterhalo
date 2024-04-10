

scoreboard players set @s cooldown_a 4
# store the user's health to clipboard1 (to check if user takes DMG after wards)
scoreboard players operation @s clipboad1 = @s health
tag @s add selfrepair_pending
tag @s add selfrepair
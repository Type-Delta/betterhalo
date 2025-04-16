
## dev stuff
execute as @a[tag=dbc_pending] run tag @s add dbc
execute as @a[tag=dbc_pending] run tag @s remove dbc_pending




execute as @a[predicate=betterhalo:wears_halo,tag=!halouser] run function betterhalo:sub/halo_setup
execute as @a[predicate=!betterhalo:wears_halo,tag=halouser,nbt=!{Health:0f}] run function betterhalo:sub/halo_removed




execute as @a[nbt={Health:0f},tag=halouser] run function betterhalo:sub/death_with_halo
execute as @a[scores={death=1..},nbt=!{Health:0f},tag=death_with_halo] run function betterhalo:sub/death_with_halo





execute as @a[predicate=betterhalo:wears_halo] run function betterhalo:sub/give_halo_effect



### Handling Armor Punishment ###
execute as @a[tag=!wear_armor_punishment,tag=!can_wear_armor] run execute if predicate betterhalo:wears_halo run execute if predicate betterhalo:wears_armor run function betterhalo:sub/wear_armor_punishment
execute as @a[tag=wear_armor_punishment] run execute if predicate betterhalo:wears_halo run execute unless predicate betterhalo:wears_armor run function betterhalo:sub/wear_armor_pardon
execute as @a[tag=wear_armor_punishment] run execute unless predicate betterhalo:wears_halo run function betterhalo:sub/wear_armor_pardon




#### Halo Light Up ####
execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"alice",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"alice"}}]} run function betterhalo:lit_halo/alice

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"aru",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"aru"}}]} run function betterhalo:lit_halo/aru

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"azusa",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"azusa"}}]} run function betterhalo:lit_halo/azusa

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"hasumi",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"hasumi"}}]} run function betterhalo:lit_halo/hasumi

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"hina",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"hina"}}]} run function betterhalo:lit_halo/hina

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"hoshino",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"hoshino"}}]} run function betterhalo:lit_halo/hoshino

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"izuna",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"izuna"}}]} run function betterhalo:lit_halo/izuna

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"koharu",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"koharu"}}]} run function betterhalo:lit_halo/koharu

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"miku",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"miku"}}]} run function betterhalo:lit_halo/miku

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"shiroko",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"shiroko"}}]} run function betterhalo:lit_halo/shiroko

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"tsurugi",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"tsurugi"}}]} run function betterhalo:lit_halo/tsurugi

execute as @a run execute unless data entity @s {Inventory:[{id:"minecraft:netherite_helmet",tag:{CharacterName:"yuuka",Lit: 1b}}]} run execute if data entity @s {Inventory:[{id:"minecraft:netherite_helmet", tag:{CharacterName:"yuuka"}}]} run function betterhalo:lit_halo/yuuka

schedule function bell_finds_all_raiders:second 1s

# Bells Help Find Raids
execute as @e[type=#minecraft:raiders] store result score @s raider_wave_number run data get entity @s Wave 1
execute as @a[scores={bell_rung=1..}] at @s run effect give @e[scores={raider_wave_number=1..}] minecraft:glowing 3

scoreboard players reset @a bell_rung

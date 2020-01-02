execute if block ~ ~ ~ redstone_torch run function sapphire:lightning_rod/particle_ground
execute if block ~ ~ ~ redstone_wall_torch run function sapphire:lightning_rod/particle_wall
#cleanup
execute unless block ~ ~ ~ minecraft:redstone_torch unless block ~ ~ ~ minecraft:redstone_wall_torch run function sapphire:lightning_rod/cleanup

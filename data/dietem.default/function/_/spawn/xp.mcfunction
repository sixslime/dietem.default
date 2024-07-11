#> dietem.default:_/spawn/xp
#--------------------
# _/drop
#--------------------


execute store result storage dietem.default:var drop.xp.x double .0001 run random value -5000..5000
execute store result storage dietem.default:var drop.xp.y double .0001 run random value 500..1000
execute store result storage dietem.default:var drop.xp.z double .0001 run random value -5000..5000

#this is just how vanilla xp chunking works.
execute if score *drop.xp -dietem.default matches 73.. run data modify storage dietem.default:var drop.xp.xp set value 73
execute if score *drop.xp -dietem.default matches 73.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp

execute if score *drop.xp -dietem.default matches 37.. run data modify storage dietem.default:var drop.xp.xp set value 37
execute if score *drop.xp -dietem.default matches 37.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp

execute if score *drop.xp -dietem.default matches 17.. run data modify storage dietem.default:var drop.xp.xp set value 17
execute if score *drop.xp -dietem.default matches 17.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp

execute if score *drop.xp -dietem.default matches 7.. run data modify storage dietem.default:var drop.xp.xp set value 7
execute if score *drop.xp -dietem.default matches 7.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp

execute if score *drop.xp -dietem.default matches 3.. run data modify storage dietem.default:var drop.xp.xp set value 3
execute if score *drop.xp -dietem.default matches 3.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp

execute if score *drop.xp -dietem.default matches 1.. run data modify storage dietem.default:var drop.xp.xp set value 1
execute if score *drop.xp -dietem.default matches 1.. run return run function dietem.default:_/spawn/xp.1 with storage dietem.default:var drop.xp
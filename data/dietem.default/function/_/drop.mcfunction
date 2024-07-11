#> dietem.default:_/drop
#--------------------
# @implement : dietem:drop
#--------------------

data modify storage dietem.default:var drop.in set from storage dietem:implement drop[-1].in

data modify storage dietem:in filter_vanishing.items set from storage dietem.default:var drop.in.items
function dietem:api/filter_vanishing

execute store result storage dietem.default:var drop.restore.levels int 1 run xp query @s levels
execute store result storage dietem.default:var drop.restore.points int 1 run xp query @s points

xp set @s 0 levels
xp set @s 0 points
function dietem.default:_/add_xp with storage dietem.default:var drop.in

# xp
execute store result score *drop.xp -dietem.default run xp query @s levels
scoreboard players operation *drop.xp -dietem.default *= *7 --dietem.default
execute if score *drop.xp -dietem.default matches 101.. run scoreboard players set *drop.xp -dietem.default 100
function dietem.default:_/spawn/xp

function dietem.default:_/restore_xp with storage dietem.default:var drop.restore

# items
execute if data storage dietem:out filter_vanishing.result[] run function dietem.default:_/spawn/item

scoreboard players reset *drop.xp -dietem.default
data remove storage dietem.default:var drop
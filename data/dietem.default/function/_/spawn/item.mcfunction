#> dietem.default:_/spawn/item
#--------------------
# _/drop
#--------------------

execute store result storage dietem.default:var drop.item.x double .0001 run random value -4000..4000
execute store result storage dietem.default:var drop.item.y double .0001 run random value 2000..2300
execute store result storage dietem.default:var drop.item.z double .0001 run random value -4000..4000

data modify storage dietem.default:var drop.item.item set from storage dietem:out filter_vanishing.result[-1]
data remove storage dietem.default:var drop.item.item.Slot

function dietem.default:_/spawn/item.1 with storage dietem.default:var drop.item

data remove storage dietem:out filter_vanishing.result[-1]
execute if data storage dietem:out filter_vanishing.result[] run function dietem.default:_/spawn/item
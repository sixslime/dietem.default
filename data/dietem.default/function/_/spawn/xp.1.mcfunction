#> dietem.default:_/spawn/xp.1

$summon experience_orb ~ ~ ~ {Value:$(xp), Motion:[$(x)d, $(y)d, $(z)d]}

$scoreboard players remove *drop.xp -dietem.default $(xp)
execute if score *drop.xp -dietem.default matches 1.. run function dietem.default:_/spawn/xp

#>dietem.default:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *dietem.default load-status 1

#declare storage dietem.default:var

# scoreboards
scoreboard objectives add -dietem.default dummy
#(dirty)
scoreboard objectives add --dietem.default dummy
#scoreboard objectives add dietem.default-scoreboard dummy
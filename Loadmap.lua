local myMap = require("Map")
local myMap2 = require("Map2")
local myMap3 = require("Map3")
local Loadmap = {}


function Loadmap.lvl_1(pMap)

for i=1,pMap.H do
    for v=1,pMap.W do
    pMap.Grid[i][v] = level2.Underground[i][v] -- set level
    end
end

end

return Loadmap
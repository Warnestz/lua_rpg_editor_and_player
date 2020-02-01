local fog = {}
fog.w = 37
fog.h = 37
fog.distance = 10
function fog.Load(pMap)
-- debut fogrid
print("Game:debut load fog grid...")


for i=1,pMap.H do
    fog[i] = {}
    for v=1,pMap.W do
    fog[i][v] = 1
    end
end
print("Game:fin du load fog grid...")
-- fin fogrid
end
--


function fog.Update(pMap,pPlayer, dt)
  
    local l,c
  for l=pPlayer.y-fog.distance ,pPlayer.y+fog.distance do
      for c=pPlayer.x-fog.distance ,pPlayer.x+fog.distance do
      if l<1 then
      else if l>pMap.W then
      else if c<1 then
      else if c>pMap.H then
      else
      local dist = math.dist(c,l,pPlayer.x,pPlayer.y)
      if fog[c][l] > 1*dist/fog.distance then
      fog[c][l] = 1*dist/fog.distance
      end
 --   pPlayer.x - c   pPlayer.y - l  
      end
      
      end
      
      end
      
  end
  end
end
  
end
--


function fog.Draw(pMap)
  
 
--print("Game:debut load fog grid...")

local ifog = 1*pMap.TILE_WIDTH
local vfog = 1*pMap.TILE_HEIGHT

for ifog=1,pMap.H do
    
    
    
    for vfog=1,pMap.W do
    love.graphics.setColor(0,0,0,fog[ifog][vfog])
    love.graphics.rectangle("fill",(vfog-1)*pMap.TILE_WIDTH,(ifog-1)*pMap.TILE_HEIGHT,pMap.TILE_WIDTH, pMap.TILE_HEIGHT)
    
    
    love.graphics.setColor(1,1,1,1)
    end
end
-- fin fogrid



end
--




return fog
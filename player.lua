local player = {}

player.images = {}
player.images[1] = love.graphics.newImage("images/player_1.png")
player.images[2] = love.graphics.newImage("images/player_2.png")
player.images[3] = love.graphics.newImage("images/player_3.png")
player.images[4] = love.graphics.newImage("images/player_4.png")
player.nbImages = 4
player.imgCurrent = 1
player.keyPressed = false

player.x = 15
player.y = 15
player.life = 100

function player.Update(pMap, dt)
  player.imgCurrent = player.imgCurrent + 5*dt
  if math.floor(player.imgCurrent) > player.nbImages then
    player.imgCurrent = 1
  end
  
  
  
  if love.keyboard.isDown("a","w","d","s") then
    if player.keyPressed == false then
      player.keyPressed = true
      local old_c = player.x
      local old_l = player.y
      
                -- wasd
                if love.keyboard.isDown("w") then
                  if player.x > 1 then
                  player.x = player.x - 1
                  else
                  end
                end
                if love.keyboard.isDown("d") then
                  if player.y < pMap.W then
                  player.y = player.y + 1
                  else
                  end
                end
                if love.keyboard.isDown("s") then
                  if player.x < pMap.H then
                  player.x = player.x + 1
                  --print(pMap.W)
                  else
                  end
                end
                if love.keyboard.isDown("a") then
                  if player.y > 1 then
                  player.y = player.y - 1
                  else
                  end
                  
                end
                -- wasd end
     local id = pMap.Grid[player.x][player.y]
     if IsSolid(id,pMap) then
        player.x = old_c
        player.y = old_l
      end
     end
     
  else
    player.keyPressed = false
 
local id2 = pMap.Grid[player.x][player.y]
if IsDanger(id2,pMap) then
player.life = player.life - 50 * dt

if player.life<0 then
player.life = 100
player.x = 15
player.y = 15
end

end

end



end 
--

 function player.Draw(pMap,pTileType)
-- afficher joueur debut
local x = (player.y-1) * pMap.TILE_WIDTH
local y = (player.x-1) * pMap.TILE_HEIGHT
love.graphics.draw(player.images[math.floor(player.imgCurrent)], x, y, 0, 2, 2)
-- afficher joueur fin
  
-- Informations de debug -- tile en dessous du joueur
if player.x>0 and player.y>0 and player.x <= pMap.H and player.y <= pMap.W then
    local id = pMap.Grid[player.x][player.y]
    love.graphics.print(
      "Ligne: "..tostring(player.x)..
      " Colonne: "..tostring(player.y)..
      " ID: "..tostring(id)..
      " ("..tostring(pTileType[id])..")"
      ,1,pMap.TILE_HEIGHT*23)
end
-- Informations de debug -- tile en dessous du joueur fin



love.graphics.print(player.life)

end
--

return player
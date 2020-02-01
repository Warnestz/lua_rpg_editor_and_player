local Texture = {}


--
function Texture.Load(pMap)
print("Game:Chargement des textures   ")
pMap.TileSheet = love.graphics.newImage("images/tilesheet.png")
  local nbColumns = pMap.TileSheet:getWidth() / pMap.TILE_WIDTH
  local nbLines = pMap.TileSheet:getHeight() / pMap.TILE_HEIGHT
  local id = 1
  
  Texture[0] = nil
  for l=1,nbLines do
    for c=1,nbColumns do
      Texture[id] = love.graphics.newQuad(
        (c-1)*pMap.TILE_WIDTH, (l-1)*pMap.TILE_HEIGHT,
        pMap.TILE_WIDTH, pMap.TILE_HEIGHT, 
        pMap.TileSheet:getWidth(), pMap.TileSheet:getHeight()
        )
      id = id + 1
    end
  end
  
print("Game:Chargement des textures terminées...")

end
--

return Texture
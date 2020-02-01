local Tile = {}


  Tile[1] = "Gravel"
  Tile[10] = "Grass"
  Tile[11] = "Grass"
  Tile[13] = "Sand"
  Tile[14] = "Sand"
  Tile[15] = "Sand"
  Tile[16] = "StrangeWater"
  Tile[19] = "Water"
  Tile[20] = "Water"
  Tile[21] = "Sea"
  Tile[37] = "Lava"
  Tile[55] = "Tree"
  Tile[58] = "Tree"
  Tile[61] = "Tree"
  Tile[68] = "Tree"
  Tile[169] = "Rock"
  Tile[129] = "Rock"

function Tile.Draw(pMap,pTexture)
-- game tile begin
  local c,l
  for l=1,pMap.H do
    for c=1,pMap.W do
      local id = pMap.Grid[l][c]
      local texQuad = pTexture[id]
      if texQuad ~= nil then
        love.graphics.draw(pMap.TileSheet, texQuad, (c-1)*pMap.TILE_WIDTH, (l-1)*pMap.TILE_HEIGHT)
      end
    end
  end
-- game tile end
end
return Tile
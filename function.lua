
--
function IsDanger(pID,pMap)
  local ftypeTile = pMap.Tile[pID]
  if ftypeTile == "Lava" then
  print("colision Lava")
  return true
  --return false
  
  end
  return false
end
--
function IsSolid(pID,pMap)
  local typeTile = pMap.Tile[pID]
  --[[
  if  typeTile == "Sea" or
      typeTile == "Tree" or
      typeTile == "Rock" then
    return true
  end
  ]]--
  if  typeTile == "Sea" then
  print("colision Sea")
  return true
  end
  if  typeTile == "Tree" then
  print("colision Tree")
  return true
  end
  if typeTile == "Rock" then
  print("colision Rock")
  return true
  end
  
  
  return false
end
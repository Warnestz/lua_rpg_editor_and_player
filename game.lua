


local Game = {}
Game.Gfunction = require("function")
Game.player = require("player")
Game.fog = require("Fog")

Game.Map = {}

Game.Map.W = 32
Game.Map.H = 23
Game.Map.TILE_WIDTH = 32
Game.Map.TILE_HEIGHT = 32

Game.Map.TileSheet = {}
Game.Map.TileTextures = {}
Game.Map.Texture = require("Texture")
Game.Map.Tile = require("Tile")
Game.Map.Loadmap = require ("Loadmap")
Game.Map.Grid = require("Grid")


function Game.Load()
  
  
  Game.Map.Texture.Load(Game.Map)
  --Game.Map.Loadmap.lvl_1(Game.Map)
  --Game.fog.Load(Game.Map)
end
--
--
function Game.Update(dt)
  Game.player.Update(Game.Map, dt)
  --Game.fog.Update(Game.Map,Game.player, dt)
end
--
function Game.Draw()

Game.Map.Tile.Draw(Game.Map,Game.Map.Texture)

  Game.player.Draw(Game.Map,Game.Map.Tile)
  --Game.fog.Draw(Game.Map,Game.player)
end

return Game
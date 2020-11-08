function love.load()
  Object = require "classic"
  require "entity"
  require "player"
  require "wall"
  -- Require box!
  require "box"

  player = Player(100, 100)
  wall = Wall(200, 100)
  box = Box(400, 150)

  objects = {}
  table.insert(objects, player)
  table.insert(objects, wall)
  table.insert(objects, box)
end

function love.update(dt)
  -- Update all the objects
  for i,v in ipairs(objects) do
      v:update(dt)
  end

  -- Go through all the objects (except the last)
  for i=1,#objects-1 do
      -- Go through all the objects starting from the position i + 1
      for j=i+1,#objects do
          objects[i]:resolveCollision(objects[j])
      end
  end
end


function love.draw()
  -- Draw all the objects
  for i,v in ipairs(objects) do
      v:draw()
  end
end
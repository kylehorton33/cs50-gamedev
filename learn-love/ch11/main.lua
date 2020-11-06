--! file: main.lua

function love.load()
  Object = require "classic"
  require "shape"
  require "rectangle"
  r1 = Rectangle(100, 100, 200, 50)
  r2 = Rectangle(350, 80, 25, 140)
end

function love.update(dt)
  --Lua turns this into: r1.update(r1, dt)
  r1:update(dt)
  r2:update(dt)
end

function love.draw()
  --Lua turns this into: r1.draw(r1)
  r1:draw()
  r2:draw()
end
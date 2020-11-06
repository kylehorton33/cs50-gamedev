--! file: main.lua

function love.load()
  Object = require "classic"
  require "rectangle"
  r1 = Rectangle()
  r2 = Rectangle()
end

function love.update(dt)
  --Lua turns this into: r1.update(r1, dt)
  r1:update(dt)
end

function love.draw()
  --Lua turns this into: r1.draw(r1)
  r1:draw()
end
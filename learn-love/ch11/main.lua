--! file: main.lua

function love.load()
  Object = require "classic"
  require "rectangle"
  r1 = Rectangle()
  r2 = Rectangle()
end

function love.update(dt)
  r1.update(r1, dt)
  print(dt)
end

function love.draw()
  r1.draw(r1)
end
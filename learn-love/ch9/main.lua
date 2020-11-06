--! file: main.lua
--Leave out the .lua
-- No need for love.load or whatever
require("example")


function love.draw()
  love.graphics.print(test,100,100)
end
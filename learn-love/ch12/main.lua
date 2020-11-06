function love.load()
  myImage = love.graphics.newImage("sheep.png")
end

function love.draw()
  love.graphics.draw(myImage, 100, 100)
end
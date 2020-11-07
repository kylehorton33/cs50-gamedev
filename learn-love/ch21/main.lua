function love.load()
  -- Create a player object with an x, y and size
  player = {
      x = 100,
      y = 100,
      size = 25,
      image = love.graphics.newImage("face.png")
  }
end

function love.update(dt)
  -- Make it moveable with keyboard 
  if love.keyboard.isDown("left") then
      player.x = player.x - 200 * dt
  elseif love.keyboard.isDown("right") then
      player.x = player.x + 200 * dt
  end

  -- Note how I start a new if-statement instead of contuing the elseif
  -- I do this because else you wouldn't be able to move diagonally.
  if love.keyboard.isDown("up") then
      player.y = player.y - 200 * dt
  elseif love.keyboard.isDown("down") then
      player.y = player.y + 200 * dt
  end
end

function love.draw()
  love.graphics.circle("line", player.x, player.y, player.size)
  -- Set the origin of the face to the center of the image
  love.graphics.draw(player.image, player.x, player.y,
      0, 1, 1, player.image:getWidth()/2, player.image:getHeight()/2)
end
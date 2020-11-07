function love.load()
  player = {
      x = 100,
      y = 100,
      size = 25,
      image = love.graphics.newImage("face.png")
  }

  coins = {}

  for i=1,25 do
      table.insert(coins,
          {
              -- Give it a random position with math.random
              x = math.random(50, 650),
              y = math.random(50, 450),
              size = 10,
              image = love.graphics.newImage("dollar.png")
          }
      )
  end
end

function love.update(dt)
  if love.keyboard.isDown("left") then
      player.x = player.x - 200 * dt
  elseif love.keyboard.isDown("right") then
      player.x = player.x + 200 * dt
  end

  if love.keyboard.isDown("up") then
      player.y = player.y - 200 * dt
  elseif love.keyboard.isDown("down") then
      player.y = player.y + 200 * dt
  end
end

function love.draw()
  love.graphics.circle("line", player.x, player.y, player.size)
  love.graphics.draw(player.image, player.x, player.y,
      0, 1, 1, player.image:getWidth()/2, player.image:getHeight()/2)

  for i,v in ipairs(coins) do
      love.graphics.circle("line", v.x, v.y, v.size)
      love.graphics.draw(v.image, v.x, v.y,
          0, 1, 1, v.image:getWidth()/2, v.image:getHeight()/2)
  end
end
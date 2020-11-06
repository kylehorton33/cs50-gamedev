function love.load()
  rect = {}
  rect.x = 100
  rect.y = 100
  rect.width = 70
  rect.height = 90

  --Add a speed property
  rect.speed = 100
end

function love.update(dt)
  -- Increase the value of x. Don't forget to use delta time.
  rect.x = rect.x + rect.speed * dt
end

function love.draw()
  love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
end
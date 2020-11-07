function love.load()
  arrow = {}
  arrow.x = 200
  arrow.y = 200
  arrow.speed = 300
  arrow.angle = 0
  arrow.image = love.graphics.newImage("arrow_right.png")
end

function love.update(dt)
  mouse_x, mouse_y = love.mouse.getPosition()
  arrow.angle = math.atan2(mouse_y - arrow.y, mouse_x - arrow.x)
  cos = math.cos(arrow.angle)
  sin = math.sin(arrow.angle)

  arrow.x = arrow.x + arrow.speed * cos * dt
  arrow.y = arrow.y + arrow.speed * sin * dt
end

function love.draw()
  love.graphics.draw(arrow.image, arrow.x, arrow.y, arrow.angle)
  love.graphics.circle("fill", mouse_x, mouse_y, 5)
end
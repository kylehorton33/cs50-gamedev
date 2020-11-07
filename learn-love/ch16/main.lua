function love.load()
  --Create an object called circle
  circle = {}

  --Give it the properties x, y, radius and speed
  circle.x = 100
  circle.y = 100
  circle.radius = 25
  circle.speed = 200
end

function love.update(dt)
  --love.mouse.getPosition returns the x and y position of the cursor.
  mouse_x, mouse_y = love.mouse.getPosition()

  angle = math.atan2(mouse_y - circle.y, mouse_x - circle.x)
end

function love.draw()
  love.graphics.circle("line", circle.x, circle.y, circle.radius)

  --Print the angle
  love.graphics.print("angle: " .. angle, 10, 10)

  --Here are some lines to visualize the velocities
  love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
  love.graphics.line(circle.x, circle.y, circle.x, mouse_y)

  --The angle
  love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)
end
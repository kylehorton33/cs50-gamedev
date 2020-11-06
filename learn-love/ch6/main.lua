function love.load()
  x = 100 
  deltaT = 0
end

function love.update(dt)
  deltaT = dt -- approx 0.01 on this comp
  if x < 600 then
    x = x + 100*dt
  end
end

function love.draw()
  love.graphics.rectangle("line", x, 50, 200, 150)
  love.graphics.print(deltaT,100,300)
end
--! file: enemy.lua
Enemy = Object:extend()

function Enemy:new()
  self.image = love.graphics.newImage("snake.png")
  self.x = 325
  self.y = 450
  self.speed = 100
end

function Enemy:update(dt)
  self.x = self.x + self.speed * dt 
end

function Enemy:draw()
  love.graphics.draw(self.image, self.x, self.y)
end
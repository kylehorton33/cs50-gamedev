Entity = Object:extend()

function Entity:new(x, y, image_path)
    self.x = x
    self.y = y
    self.image = love.graphics.newImage(image_path)
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.last = {}
    self.last.x = self.x
    self.last.y = self.y
end

function Entity:update(dt)
  -- Set the current position to be the previous position
  self.last.x = self.x
  self.last.y = self.y
end

function Entity:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

function Entity:resolveCollision(e)
  if self:checkCollision(e) then
      -- The player's right side is x + width
      -- The wall's left side is x
      -- Calculate the difference and subtract that from the player's position
      local pushback = self.x + self.width - e.x
      self.x = self.x - pushback
  end
end

function Entity:checkCollision(e)
  -- e will be the other entity with which we check if there is collision.
  -- This is the compact version.
  -- This is one action (return), but spread over multiple lines.
  return self.x + self.width > e.x
  and self.x < e.x + e.width
  and self.y + self.height > e.y
  and self.y < e.y + e.height
end
function love.load()
  --Each value is separated by a comma, just like with parameters and arguments
  fruits = {"apple", "banana"}
  table.insert(fruits, "pear")
end

function love.draw()
  love.graphics.print(fruits[1], 100, 100)
  love.graphics.print(fruits[2], 100, 200)
  love.graphics.print(fruits[3], 100, 300)
end
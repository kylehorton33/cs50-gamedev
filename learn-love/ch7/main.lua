function love.load()
  --Each value is separated by a comma, just like with parameters and arguments
  fruits = {"apple", "banana"}
  table.insert(fruits, "pear")
end

function love.draw()
  for i=1,#fruits do
    love.graphics.print(fruits[i], 100, 100 + 50 * i)
  end
end
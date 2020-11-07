function love.load()
  tilemap = {1, 0, 0, 1, 1, 0, 1, 1, 1, 0}
end

function love.draw()
  --ipairs recap
  --ipairs is a special function that allows you to loop through a table
  --Every iteration i becomes what iteration the loop is at, so 1, 2, 3, 4, etc)
  --Every iteration v becomes the value on position i, so in our case 1, 0, 0, 1, 1, 0, etc.
  for i,v in ipairs(tilemap) do
      if v == 1 then
          love.graphics.rectangle("line", i * 25, 100, 25, 25)
      end
  end
end
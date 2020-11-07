function love.load()
  tilemap = {
      {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
      {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
      {1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
      {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
      {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
  }
end

function love.draw()
  --Let's do it without ipairs first.

  --For i=1 till the number of values in tilemap
  for i=1,#tilemap do
      --For j till the number of values in this row
      for j=1,#tilemap[i] do
          --If the value on row i, column j equals 1
          if tilemap[i][j] == 1 then
              --Draw the rectangle.
              --Use i and j to position the rectangle.
              -- j for x, i for y.
              love.graphics.rectangle("line", j * 25, i * 25, 25, 25)
          end 
      end
  end
end
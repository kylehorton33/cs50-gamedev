function love.load()
  song = love.audio.newSource("song.ogg", "stream")
  song:setLooping(true)
  song:play()
end
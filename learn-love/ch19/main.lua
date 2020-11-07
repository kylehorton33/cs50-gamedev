function love.load()
  song = love.audio.newSource("song.ogg", "stream")
  song:setLooping(true)
  song:play()

  -- sfx is short for 'sound effect', or at least I use it like that.
  sfx = love.audio.newSource("sfx.ogg", "static")

  song:setVolume(0.2)
  sfx:setVolume(0.9)
end

function love.keypressed(key)
  if key == "space" then
      sfx:play()
  end
end
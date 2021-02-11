function love.load()
  -- Remove filter
  love.graphics.setDefaultFilter("nearest")
  
  -- Game resolution
  width = 384
  height = 224
  
  -- Window parameters
  iconGame = love.image.newImageData("")
  love.window.setIcon(iconGame)
  love.window.setTitle("")
  love.window.setMode(width, height, {resizable = true, minwidth = width, minheight = height})
  
  -- Fullscreen initial value
  fullscreenON = false
  fullscreenKEY = "f4"
  
  -- Scale initialization
  scaleX = 0
  scaleY = 0

end

function love.update(dt)
  -- Scale value
  scaleX = love.graphics.getWidth() / width
  scaleY = love.graphics.getHeight() / height
  
end

function love.draw()
  
  
end

function love.keypressed(key)
  -- Fullscreen ON/OFF
  if key == fullscreenKEY and fullscreenON == false then
    fullscreenON = true
    love.window.setFullscreen(true)
  elseif key == fullscreenKEY and fullscreenON == true then
    fullscreenON = false
    love.window.setFullscreen(false)
  end
  
end

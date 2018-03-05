-- Title: MovingImages
-- Name: John Ngundeng
-- Course: ICS2O/3C
-- This program displays an bettleship moing across the screen. As well as another
--  object moving in a different direction 


-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeed = 3 

scrollSpeed2 = 7

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536) 

-- character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- second character image with width and height 
local rocketship = display.newImageRect("images/rocketship.png", 150, 150)

-- set new image to be transparent 
rocketship.alpha = 1

-- set the initial x and y position of the rocketship
rocketship.x = 1200
rocketship.y = 500

-- set the image to be transparent 
beetleship.alpha = 0 

-- set the initial x and y position of the beetleship 
beetleship.x = 0
beetleship.y = display.contentHeight/3 

-- change direction of roccket ship 
rocketship:scale( -1, 1 )

-- Function: Moveship
-- Input: this function accepts an event listener
-- output: none
-- description: This function adds the scroll speed to the x-value of the ship
local function Moverocket(event)
    -- add the scroll speed to the x-value of the ship 
    rocketship.x = rocketship.x - scrollSpeed2
    -- change the transparency of the ship every time it moves so that it fades out 
    rocketship.alpha = rocketship.alpha + 0.1 
end

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", Moverocket)

-- Function: Moveship
-- Input: this function accepts an event listener
-- output: none
-- description: This function adds the scroll speed to the x-value of the ship

local function Movebeetle(event)
    -- add the scroll speed to the x-value of the ship 
    beetleship.x = beetleship.x + scrollSpeed
    -- change the transparency of the ship every time it moves so that it fades out 
    beetleship.alpha = beetleship.alpha + 0.2 
end

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", Movebeetle)




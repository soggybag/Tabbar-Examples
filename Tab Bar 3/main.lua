-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- This example works with the tabbar widget and composer. 

-----------------------------------------------------------------------------------------

-- This will appear behind all scenes. 
local back = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
back:setFillColor( 200/255, 200/255, 200/255 )

-- Add elements above tis line that will appear behind composer scenes.
-----------------------------------------------------------------------------------------


-- Load composer and widget libraries
local composer = require(  "composer" )
local widget = require( "widget" )


-- load chat.lua
composer.gotoScene( "chat" )


-----------------------------------------------------------------------------------------
-- Add elements below this line that will appear in front of composer scenes.



-------------------------------------------------------------------------
-- Handle all of the tabbar buttons with a single function. 
-- All of the tabbar buttons call on this function when pressed. 
-- The function below gets the id of the button and loads the scene with that name. 
-- Note that all of the buttons defined in the table below have an id property! 
local function on_button( event )
	local id = event.target._id	-- Get the id of the button.
	-- Goto the scene whose name matches the id.  
	composer.gotoScene( id, {effect="slideLeft", time=300} )
	return true
end
----------------------------------------------------------------------


-- This table defines buttons on the tabbar. Each button is defined as
-- a label, a default and over image, width and height, and an onPress 
-- handler which determines what happens when the tab button is pressed. 
local options = { 
	{
		id="chat",
		label="Chat", 
		defaultFile="images/09-chat2.png", 
		overFile="images/09-chat2-down.png", 
		width=24, height=27,
		onPress=on_button
	},
	{
		id="mail",
		label="Mail", 
		defaultFile="images/18-envelope.png", 
		overFile="images/18-envelope-down.png", 
		width=24, height=27,
		onPress=on_button
	},
	{
		id="skull",
		label="Skull", 
		defaultFile="images/21-skull.png", 
		overFile="images/21-skull-down.png", 
		width=24, height=27,
		onPress=on_button
	},
	{
		id="beer",
		label="Beer", 
		defaultFile="images/88-beermug.png", 
		overFile="images/88-beermug-down.png", 
		width=24, height=27,
		onPress=on_button
	},
	{
		id="coffee",
		label="Coffee", 
		defaultFile="images/100-coffee.png", 
		overFile="images/100-coffee-down.png", 
		width=24, height=27,
		onPress=on_button
	} }


-- Create the tabbar. 
local tabbar = widget.newTabBar( {
	buttons=options,  				-- Set the buttons
	height=50, 						-- Set the height
	top=display.contentHeight - 50	-- Set the top position
} )

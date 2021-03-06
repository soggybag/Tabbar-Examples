-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Load composer and widget libraries
local composer = require(  "composer" )
local widget = require( "widget" )


-- load chat.lua
composer.gotoScene( "chat" )

-----------------------------------------------------------------------------------------

-- Add any objects that should appear on all scenes below (e.g. tab bar, hud, etc.):


-- Create a Tab Bar in main. Creating the tab bar here will make it appear above all 
-- storyboard scenes. 

-- Import the widget library
local widget = require( "widget" )


-- These functions handle taps on the tab bar buttons.
local function tap_tab_button( event )
	local id = event.target._id -- Get the id of the button 
	composer.gotoScene( id, {effect="slideLeft", time=300} )
	return true -- prevents the event from passing through to objects below
end 


local options = { 
	{
		label="Chat", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } },
		id="chat", -- id holds the scene template name
		defaultFile="images/09-chat2.png", 
		overFile="images/09-chat2-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		label="Mail", 
		id="mail", -- id holds the scene template name
		defaultFile="images/18-envelope.png", 
		overFile="images/18-envelope-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		label="Skull", 
		id="skull", -- id holds the scene template name
		defaultFile="images/21-skull.png", 
		overFile="images/21-skull-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		label="Beer", 
		id="beer", -- id holds the scene template name
		defaultFile="images/88-beermug.png", 
		overFile="images/88-beermug-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		label="Coffee", 
		id="coffee", -- id holds the scene template name
		defaultFile="images/100-coffee.png", 
		overFile="images/100-coffee-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	} }


-- This example adds art to the tabbar to customize its display. 
-- The tabbar is made up of four images:
-- A background which covers the entire back of the tabbar. 
-- The selected state for each button is handled with three images. 
-- A center, which is stretched across the width of the button.
-- A left cap which sits on the left of the button. 
-- A right cap which sits on the right side. 
-- Look at the images closely and compare them to what you see on the screen
-- in the example. 

-- If you are using the images, you must use them all!

-- You must declare the sizes for the images. 


local tabbar = widget.newTabBar( {
	buttons=options, 
	height=50, 
	top=430,
	backgroundFile="images/tabbar-back.png",					-- Background
	tabSelectedLeftFile="images/tabbar-left-selected.png",		-- left selected image
	tabSelectedMiddleFile="images/tabbar-center-selected.png",	-- middle selected image
	tabSelectedRightFile="images/tabbar-right-selected.png",	-- right selected image
	tabSelectedFrameWidth=3,									-- Set the width
	tabSelectedFrameHeight=50									-- and height for the left and right images. 
} )

--[[ 

Here I created the tab bar with custom background and selected state. 
The selected state state is made up of three images: left, middle, and right. 
These should all be the same size. The middle image will be stretched to fill 
the gap between the left and right images.

--]]









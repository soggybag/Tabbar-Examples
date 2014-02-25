-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.HiddenStatusBar ) 

local storyboard = require(  "storyboard" )
-- load scenetemplate.lua
storyboard.gotoScene( "chat" )

-----------------------------------------------------------------------------------------

-- Add any objects that should appear on all scenes below (e.g. tab bar, hud, etc.):


-- Create a Tab Bar in main. Creating the tab bar here will make it appear above all 
-- storyboard scenes. 

-- Import the widget library
local widget = require( "widget" )


-- This example improves on the last by abstracting. Here all tab bar buttons handle 
-- onPress with the same function. Each button now has an id (see below) that contains 
-- the name of the scene they will load. 

-- These functions handle taps on the tab bar buttons.
local function tap_tab_button( event )
	local id = event.target._id -- Get the id of the button 
	storyboard.gotoScene( id, {effect="slideLeft", time=300} )
	return true -- prevents the event from passing through to objects below
end 


-- This time I added an onPress to each button. This will handle taps on each 
-- tab bar button. (I added some line returns to make the options table easier to read)
local options = { 
	{
		id="chat", 		-- id holds the scene template name
		label="Chat", 	-- Set the label text
		labelColor = { 	-- Set he label color
			default={ 0.7, 0.7, 0.7 }, 	-- Default color
			over={ 0.6, 0.8, 0.6 } 		-- Over/Active color
		},
		defaultFile="images/09-chat2.png", 		-- Set the default icon image
		overFile="images/09-chat2-down.png", 	-- Over/Active icon icon image
		width=26, 				-- The width of the icon images 
		height=27,				-- The height of the icon images. 
		onPress=tap_tab_button 	-- Each button uses same handler (defined above)
	},
	{
		id="mail",
		label="Mail", 
		labelColor = { default={ 0.7, 0.7, 0.7 }, over={ 0.6, 0.8, 0.6 } },
		defaultFile="images/18-envelope.png", 
		overFile="images/18-envelope-down.png", 
		width=26, 
		height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		id="skull", -- id holds the scene template name
		label="Skull", 
		labelColor = { default={ 0.7, 0.7, 0.7 }, over={ 0.6, 0.8, 0.6 } },
		defaultFile="images/21-skull.png", 
		overFile="images/21-skull-down.png", 
		width=26, 
		height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		id="beer", -- id holds the scene template name
		label="Beer", 
		labelColor = { default={ 0.7, 0.7, 0.7 }, over={ 0.6, 0.8, 0.6 } },
		defaultFile="images/88-beermug.png", 
		overFile="images/88-beermug-down.png", 
		width=26, 
		height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		id="coffee", -- id holds the scene template name
		label="Coffee", 
		labelColor = { default={ 0.7, 0.7, 0.7 }, over={ 0.6, 0.8, 0.6 } },
		defaultFile="images/100-coffee.png", 
		overFile="images/100-coffee-down.png", 
		width=26, 
		height=27,
		onPress=tap_tab_button -- Each button uses same handler
	} }


local tabbar = widget.newTabBar( {
	buttons					= options, 	-- The table of buttons defined above
	height					= 50, 		-- height of the tab bar 
	top						= 430,		-- Top of the tab bar 
	backgroundFile			= "images/tabbar-back.png",				-- Background
	tabSelectedLeftFile		= "images/tabbar-left-selected.png",	-- left selected image
	tabSelectedMiddleFile	= "images/tabbar-center-selected.png",	-- middle selected image
	tabSelectedRightFile	= "images/tabbar-right-selected.png",	-- right selected image
	tabSelectedFrameWidth	= 3,	-- Width of the left, middle and right tab selected image files. 
	tabSelectedFrameHeight	= 50	-- Height of the left, middle, and right tab selected image files. 
} )

--[[ 

Here I created the tab bar with custom background and selected state. 
The selected state state is made up of three images: left, middle, and right. 
These should all be the same size. The middle image will be stretched to fill 
the gap between the left and right images.

--]]









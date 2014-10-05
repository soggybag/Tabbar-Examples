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



-- Import the widget library
local widget = require( "widget" )


-- These functions handle taps on the tab bar buttons.
local function tap_tab_button( event )
	local id = event.target._id -- Get the id of the button 
	composer.gotoScene( id, {effect="slideLeft", time=300} )
	return true -- prevents the event from passing through to objects below
end 


-- This time I set the labelColor to customize the color of the label. 
-- I also customized the background of the chat button for the selected 
-- or over state.  

local options = { 
	{
		label="Skull", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } },
		id="skull", -- id holds the scene template name
		defaultFile="images/21-skull.png", 
		overFile="images/21-skull-down.png", 
		width=24, height=27,
		onPress=tap_tab_button 
	},
	{
		label="Mail", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } },
		id="mail", -- id holds the scene template name
		defaultFile="images/18-envelope.png", 
		overFile="images/18-envelope-down.png", 
		width=24, height=27,
		onPress=tap_tab_button 
	},
	{
		label="Chat", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } }, -- Set the label color
		id="chat", -- id holds the scene template name
		defaultFile="images/09-chat2.png", 
		overFile="images/09-chat2-down.png", 
		width=40, height=40,
		onPress=tap_tab_button, 
		selected = true	 		-- mark this as the currently selected button
	},
	{
		label="Beer", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } },
		id="beer", -- id holds the scene template name
		defaultFile="images/88-beermug.png", 
		overFile="images/88-beermug-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	},
	{
		label="Coffee", 
		labelColor = { default={ 0.8, 0.8, 0.8 }, over={ 1, 1, 1 } },
		id="coffee", -- id holds the scene template name
		defaultFile="images/100-coffee.png", 
		overFile="images/100-coffee-down.png", 
		width=24, height=27,
		onPress=tap_tab_button -- Each button uses same handler
	} }


local tabbar = widget.newTabBar( {
	buttons=options, 
	height=50, 
	top=430,
	backgroundFile="images/tabbar-back.png",					-- Background
	tabSelectedLeftFile="images/tabbar-left-selected.png",		-- left selected image
	tabSelectedMiddleFile="images/tabbar-center-selected.png",	-- middle selected image
	tabSelectedRightFile="images/tabbar-right-selected.png",	-- right selected image
	tabSelectedFrameWidth=3,
	tabSelectedFrameHeight=50
} )

--[[ 

Here I created the tab bar with custom background and selected state. 
The selected state state is made up of three images: left, middle, and right. 
These should all be the same size. The middle image will be stretched to fill 
the gap between the left and right images.

Look at the art for this example in photoshop. The background image for the tabbar 
has some transparent space at the top. This allows the button selected images to 
extend above the background. 

--]]









-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require(  "storyboard" )

-- load scenetemplate.lua
storyboard.gotoScene( "chat" )

-- Add any objects that should appear on all scenes below (e.g. tab bar, hud, etc.):


-- Create a Tab Bar in main. Creating the tab bar here will make it appear above all 
-- storyboard scenes. 

-- Import the widget library
local widget = require( "widget" )
widget.setTheme( "widget_theme_ios" )


-- These functions handle taps on the tab bar buttons.
local function tap_chat( event )
	storyboard.gotoScene( "chat", {effect="slideLeft", time=300} )
	return true -- prevents the event from passing through to objects below
end 

local function tap_mail( event )
	storyboard.gotoScene( "mail", {effect="slideLeft", time=300} )
	return true
end

local function tap_skull( event )
	storyboard.gotoScene( "skull", {effect="slideLeft", time=300} )
	return true
end

local function tap_beer( event )
	storyboard.gotoScene( "beer", {effect="slideLeft", time=300} )
	return true
end

local function tap_coffee( event )
	storyboard.gotoScene( "coffee", {effect="slideLeft", time=300} )
	return true
end


-- This time I added an onPress to each button. This will handle taps on each 
-- tab bar button. (I added some line returns to make the options table easier to read)
local options = { 
	{
		label="Chat", 
		defaultFile="images/09-chat2.png", 
		overFile="images/09-chat2-down.png", 
		width=24, height=27,
		onPress=tap_chat
	},
	{
		label="Mail", 
		defaultFile="images/18-envelope.png", 
		overFile="images/18-envelope-down.png", 
		width=24, height=27,
		onPress=tap_mail
	},
	{
		label="Skull", 
		defaultFile="images/21-skull.png", 
		overFile="images/21-skull-down.png", 
		width=24, height=27,
		onPress=tap_skull
	},
	{
		label="Beer", 
		defaultFile="images/88-beermug.png", 
		overFile="images/88-beermug-down.png", 
		width=24, height=27,
		onPress=tap_beer
	},
	{
		label="Coffee", 
		defaultFile="images/100-coffee.png", 
		overFile="images/100-coffee-down.png", 
		width=24, height=27,
		onPress=tap_coffee
	} }

local tabbar = widget.newTabBar( {buttons=options, height=50, top=430} )

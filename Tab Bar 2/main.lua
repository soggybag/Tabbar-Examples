-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- This example works with the tabbar widget and composer. 

-----------------------------------------------------------------------------------------

-- This will appear behind all scenes. 
local back = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
back:setFillColor( 240/255, 240/255, 250/255 )

-- Add elements above tis line that will appear behind composer scenes.
-----------------------------------------------------------------------------------------


-- Load composer and widget libraries
local composer = require(  "composer" )
local widget = require( "widget" )


-- Set the default theme of widget to ios (original). 
widget.setTheme( "widget_theme_ios" )


-- load chat.lua
composer.gotoScene( "chat" )


-----------------------------------------------------------------------------------------
-- Add elements below this line that will appear in front of composer scenes.



-------------------------------------------------------------------------
-- These functions handle taps on the tab bar buttons.
local function tap_chat( event )
	composer.gotoScene( "chat", {effect="slideLeft", time=300} )
	return true -- prevents the event from passing through to objects below
end 

local function tap_mail( event )
	composer.gotoScene( "mail", {effect="slideLeft", time=300} )
	return true
end

local function tap_skull( event )
	composer.gotoScene( "skull", {effect="slideLeft", time=300} )
	return true
end

local function tap_beer( event )
	composer.gotoScene( "beer", {effect="slideLeft", time=300} )
	return true
end

local function tap_coffee( event )
	composer.gotoScene( "coffee", {effect="slideLeft", time=300} )
	return true
end
----------------------------------------------------------------------


-- This table defines buttons on the tabbar. Each button is defined as
-- a label, a default and over image, width and height, and an onPress 
-- handler which determines what happens when the tab button is pressed. 
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


-- Create the tabbar. 
local tabbar = widget.newTabBar( {
	buttons=options,  				-- Set the buttons
	height=50, 						-- Set the height
	top=display.contentHeight - 50	-- Set the top position
} )

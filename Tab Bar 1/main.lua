-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


-- Import the widget library
local widget = require( "widget" )
-- To use one of the built in themes uncomment one of the lines below. 
-- widget.setTheme( "widget_theme_ios" )
widget.setTheme( "widget_theme_android" )

-- Define some options for the tab bar. This is an array, each item in the array is a table. 
-- Each of these tables defines one button on the bar. In basic form each button needs to 
-- define the following properties: 
-- label, defaultImage, overImage, width, and height. 
local options = { 
	{label="Chat", defaultFile="images/09-chat2.png", overFile="images/09-chat2-down.png", width=24, height=27},
	{label="Chat", defaultFile="images/18-envelope.png", overFile="images/18-envelope-down.png", width=24, height=27} 
}

-- Exercise: Add three more buttons using the other icons in the images folder. 

-- Create the tab bar with widget.newTabBar(). Supply a table with properties describing the 
-- tab bar. use the options above in the buttons property to create the buttons.
 
local tabbar = widget.newTabBar( {buttons=options, height=50, top=display.contentHeight - 50} )

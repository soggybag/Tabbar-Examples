----------------------------------------------------------------------------------
--
-- chat.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

----------------------------------------------------------------------------------
-- 
--	NOTE:
--	
--	Code outside of listener functions (below) will only be executed once,
--	unless storyboard.removeScene() is called.
-- 
---------------------------------------------------------------------------------

-- This examples shows a table view inside of a storyboard scene. 

---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------
-- Define some data to be displayed in the list
local data = { 
	{title="Hello", details="AAAAAAAAAA"}, 
	{title="World", details="BBBBBBBBBB"}, 
	{title="Hello", details="CCCCCCCCCC"}, 
	{title="World", details="DDDDDDDDDD"}, 
	{title="Hello", details="EEEEEEEEEE"}, 
	{title="World", details="FFFFFFFFFF"}, 
	{title="Hello", details="GGGGGGGGGG"}, 
	{title="World", details="HHHHHHHHHH"}, 
	{title="Hello", details="IIIIIIIIII"}, 
	{title="World", details="JJJJJJJJJJ"}, 
	{title="Hello", details="KKKKKKKKKK"}, 
	{title="World", details="LLLLLLLLLL"}, 
	{title="Hello", details="MMMMMMMMMM"}, 
	{title="World", details="NNNNNNNNNN"}, 
}

local list -- Define a variable to hold the table view

local function render_row( event )
	local row = event.row		-- Get the row display object
	local index = row.index		-- get the index of the row
	
	-- add some text to this row
	local title_text = display.newText( data[index].title, 10, 12, native.systemFont, 20 )
	title_text.anchorX = 0
	title_text.anchorY = 0
	title_text:setFillColor( 0.93, 0.93, 0.93 )
	row:insert( title_text )
	
	
end 

local function touch_row( event )
	print( event.phase )
	if event.phase == "tap" then 
		local index = event.target.index
		storyboard.gotoScene( "chat-details", {effect="slideLeft", params={data=data[index]}} )
	end 
end 


-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	
	local widget = require( "widget" ) -- Load the widget library
	
	-- Create a new table view object
	list = widget.newTableView( {
		noLines=true,
		width=320,						-- Set the width
		height=438,						-- height
		backgroundColor={0.2,0.1,0.1},	-- background color
		onRowRender=render_row,			-- Set a function to create rows
		onRowTouch=touch_row			-- Set a function to handle touch events on a row
	} )
	
	-- Add some rows to the table. Here we'll count the number of items in data above
	for i = 1, #data do 
		-- Insert a new row into the list
		list:insertRow( {
			rowHeight=50,	-- Set the height of the row
			rowColor={default={0.6,0.65,0.66}, over={0.2,0.2,0.2}},
			lineColor={1,1,1}
		} )
	end 	
	
	group:insert( list )
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. remove listeners, widgets, save state, etc.)
	
	-----------------------------------------------------------------------------
	
end


---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene
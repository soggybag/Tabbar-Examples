----------------------------------------------------------------------------------
--
-- chat-details.lua
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

---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

local details_text
local title_text
local bar 
local back_button

local function on_back( event )
	storyboard.gotoScene( "chat", {effect="slideRight"} ) 
end 

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	
	bar = display.newRect( 0, 0, display.contentWidth, 40 )
	group:insert( bar )
	bar.anchorX = 0
	bar.anchorY = 0
	
	title_text = display.newText( "Title", 0, 0, native.systemFont, 24 )
	title_text.anchorX = 0.5
	title_text.anchorY = 0
	title_text.x = display.contentCenterX
	title_text:setFillColor( 0, 0, 0 )
	group:insert( title_text )
	
	details_text = display.newText( "Details", 10, 50, native.systemFont, 16 )
	details_text.anchorX = 0
	details_text.anchorY = 0
	group:insert( details_text )
	
	local widget = require( "widget" )
	back_button = widget.newButton( {
		label="back",
		width=60,
		height=40,
		top=0,
		left=0,
		onRelease=on_back
	} )
	group:insert( back_button )
	
end


-- **************************************************
-- Called immediately after scene has moved onscreen:
function scene:willEnterScene( event )
	local group = self.view
	
	details_text.text = event.params.data.details
end
-- **************************************************


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	local group = self.view
	
	
end


---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- ***********************************************
scene:addEventListener( "willEnterScene", scene )
-- ***********************************************

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene
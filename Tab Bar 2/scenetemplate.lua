--------------------------------------------------------------------------------
-- scenetemplate.lua
--------------------------------------------------------------------------------

-- Use this file as a template to create other scenes. It contains all of the 
-- boiler plate code for creating a scene. 

-- A scene receives a create event when it is created for the first time. 
-- use the create handler to create all of the objects the scene will display. 

-- A scene receives a show event when it is moving into view. Use this activate 
-- any systems the scene will use. For example add event listeners to buttons. 

-- A scene receives an exit scene event when it leaves view. Use this event to 
-- stop any systems the scene may be using when the scene leaves view. 

--------------------------------------------------------------------------------



-- Import the composer library
local composer = require( "composer" )
local scene = composer.newScene()

---------------------------------------------------------------------------------


-- Called when the scene's view does not exist:
function scene:create( event )
	local group = self.view

end

---------------------------------------------------------------------------------

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then
        -- Called when the scene is still off screen and is about to move on screen
       
       
    elseif phase == "did" then
        -- Called when the scene is now on screen
        -- 
        -- INSERT code here to make the scene come alive
        -- e.g. start timers, begin animation, play audio, etc
        
        
    end 
end

---------------------------------------------------------------------------------

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        -- Called when the scene is on screen and is about to move off screen
        --
        -- INSERT code here to pause the scene
        -- e.g. stop timers, stop animation, unload sounds, etc.)
        
        
    elseif phase == "did" then
        -- Called when the scene is now off screen
		
		
    end 
end

--------------------------------------------------------------------------------

function scene:destroy( event )
    local sceneGroup = self.view

    -- Called prior to the removal of scene's "view" (sceneGroup)
    -- 
    -- INSERT code here to cleanup the scene
    -- e.g. remove display objects, remove touch listeners, save state, etc
end


---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
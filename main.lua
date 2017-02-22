-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--for Corona Simulator Output
print("Hello World")
--Output a text on screen
local myTextObject = display.newText( "Hello World!", 160 , 120, "Arial", 40 )	--Create variable, newTextSyntax:(String,x,y,font,font-size)
myTextObject:setFillColor( 1, 0, 0 ) --Set color of text, Syntax(red,green,blue) mix it :)
--Create a function to change the color of text, after a screen tap.
function screenTap()	
    local r = math.random( 0, 100 )	--Using math-library to set a random number
    local g = math.random( 0, 100 )
    local b = math.random( 0, 100 )
    myTextObject:setFillColor( r/100, g/100, b/100 )	--refer to our first variable. 100/100=1
end
display.currentStage:addEventListener( "tap", screenTap )		--Finally add this and your ready :) event listener are for creating interactivity, add this after functions end.
--"tap" is for "listen" the tap.Second refer to function, ("tap"/ refer to foregone function)

--repeat it with other variable names, in order to check if works
local hallo = display.newText("Jo Musch",160, 200, "Arial", 49)
hallo:setFillColor(0,1,1)
function screenTap2()
    local r2 = math.random( 0, 100 )
    local g2 = math.random( 0, 100 )
    local b2 = math.random( 0, 100 )
    hallo:setFillColor( r2/100, g2/100, b2/100 )
end
display.currentStage:addEventListener( "tap", screenTap2 )


// Project: Mabur Go 
// Created: 2024-04-28

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Mabur Go" )
SetWindowSize( 768 ,1024, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 768 ,1024 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 0, 1 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage(1, "space-ship.png")
LoadImage(10, "alien-ship.png")
LoadImage(100, "asteroid-1.png")
LoadImage(101, "asteroid-2.png")
LoadImage(200, "particels.png")
LoadImage(1000, "background.png")

LoadSound(1, "backsound.wav")
PlaySound(1, 60, 1)

CreateSprite(2, 1000)
SetSpriteSize(2, 768, 1024)

CreateSprite(1, 1)
SetSpriteSize(1, 100, 100)
SetSpritePosition(1, 0, GetVirtualHeight() - GetSpriteHeight(1))

SetJoystickScreenPosition(200, 800, 20)


do
    x = GetJoystickX() * 10
    
    SetSpritePosition(1, GetSpriteX(1) + x, GetSpriteY(1))
    
    if(GetSpriteX(1) < 0)
		SetSpriteX(1, 0)
	endif
	
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1, GetVirtualWidth() - GetSpriteWidth(1))
	endif

    Print( ScreenFPS() )
    Sync()
loop

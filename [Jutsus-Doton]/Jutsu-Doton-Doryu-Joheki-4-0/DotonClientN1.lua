function createSoundDoton1(thePlayer)
setTimer (
        function ( )
                local sound = playSound("sondot.mp3",false)
				setSoundVolume(sound, 0.9)
        end
        ,1000, 1
    )
end
addEvent ("createSoundDoton1", true)
addEventHandler ("createSoundDoton1", root, createSoundDoton1)

function TextoDooton(p)
		addEventHandler ("onClientRender", getRootElement(), dieDx)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),dieDx) end,8000,1)
end
addEvent ("CreateTextoDoton1", true)
addEventHandler ("CreateTextoDoton1", root, TextoDooton)

local dotonColor = tocolor(48, 31, 2, 255)

function dieDx ()
		dxDrawText("!DOTON DORYU JOHEKI N1¡", 212, 611, 820, 646, dotonColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end

------------------------------------------Textura-----------------------------------------

function Remplacedoton ()
txd = engineLoadTXD("cuntrock.txd") 
engineImportTXD(txd, 897 )
end
addEventHandler( "onClientResourceStart", resourceRoot, Remplacedoton )
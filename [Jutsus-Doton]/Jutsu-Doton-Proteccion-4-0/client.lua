function TextoDooton(p)
		addEventHandler ("onClientRender", getRootElement(), dieDxDotonPro)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),dieDxDotonPro) end,8000,1)
end
addEvent ("CreateTextoDotonProteccion", true)
addEventHandler ("CreateTextoDotonProteccion", root, TextoDooton)

function SonidoDotoonProteccion ()
	setTimer (
        function ( )
			local sound = playSound("sondot.mp3",false)
			setSoundVolume(sound, 0.9)
        end
        ,2500, 1
    )
end
addEvent ("SonidoDotonProteccion", true)
addEventHandler ("SonidoDotonProteccion", root, SonidoDotoonProteccion)


local dotonColor = tocolor(48, 31, 2, 255)

function dieDxDotonPro ()
		dxDrawText("!DOTON PROTECCION N1¡", 212, 611, 820, 646, dotonColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end
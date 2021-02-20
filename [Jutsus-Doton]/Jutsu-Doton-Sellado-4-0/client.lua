-----------------------------------OBJETO SELLO --------------------------------------

function importTextures2()
	txd = engineLoadTXD ( "sello/des_n.txd" )
		engineImportTXD ( txd, 3252 )
	col = engineLoadCOL ( "sello/montala.col" )
	dff = engineLoadDFF ( "sello/n_bit_07.dff", 0 )
	engineReplaceCOL ( col, 3252 )
	engineReplaceModel ( dff, 3252 )
	engineSetModelLODDistance(3252, 2000)
end

setTimer ( importTextures2, 3000, 1)

addEventHandler("onClientResourceStop", getResourceRootElement(getThisResource()),
	function()
		engineRestoreCOL(3252)
		engineRestoreModel(3252)
	end
)


function TextoDooton1(p)
		addEventHandler ("onClientRender", getRootElement(), Textodoton1Dx)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),Textodoton1Dx) end,8000,1)
end
addEvent ("CreateTextoDooton1", true)
addEventHandler ("CreateTextoDooton1", root, TextoDooton1)

local doton1Color = tocolor(48, 31, 2, 255)

function Textodoton1Dx ()
		dxDrawText("!Sabaku kyū¡", 212, 611, 820, 646, doton1Color, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end
local tiempo = 3500

function Doton1(sourcePlayer, PrimeraCiudad)
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,48, 31, 2,false) return end
if (getTickCount ( ) - tiempo > 5000) then
if 	exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,10) then
	exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,10)	
triggerClientEvent (sourcePlayer, "CreateTextoDoton1", sourcePlayer)
triggerClientEvent (sourcePlayer, "createSoundDoton1", sourcePlayer)
outputChatBox("Doton Doryu Joheki N1",sourcePlayer,48, 31, 2,false)
tiempo = getTickCount ( )
local x, y, z = getElementPosition ( sourcePlayer )
objeto = createObject ( 897, x, y, z - 8, 0, 90, 90 )
setTimer (destroyElement, 10000, 1, objeto)
moveObject ( objeto, 8000, x, y - 8, z + 1 )
setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )
setTimer (
        function ( )
            setPedAnimation ( sourcePlayer )
        end
        ,2000, 1
    )
else
outputChatBox("No tienes suficiente chakra",sourcePlayer,48, 31, 2,false)
end
else
outputChatBox ("Debes esperar 5 segundos para poder utilizar este jutsu!",sourcePlayer,255, 0, 0,true )
end
end

addCommandHandler("doton1",Doton1)
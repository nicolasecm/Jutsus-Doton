local tiempo = 3500
 
addCommandHandler("doton-proteccion",function( sourcePlayer )
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,48, 31, 2,false) return end
if (getTickCount ( ) - tiempo > 5000) then
if 	exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,45) then
	exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,45)	
triggerClientEvent (sourcePlayer, "CreateTextoDotonProteccion", sourcePlayer)
triggerClientEvent (sourcePlayer, "SonidoDotonProteccion", sourcePlayer)
outputChatBox("Doton Proteccion N1",sourcePlayer,48, 31, 2,false)
tiempo = getTickCount ( )
local x, y, z = getElementPosition ( sourcePlayer )
local xx, yy, zz = getElementRotation ( sourcePlayer )
local armadura = getPedArmor ( sourcePlayer )
local obtenerdi = getElementDimension ( sourcePlayer )
objeto = createObject( 13637, x, y, z - 9, xx, yy, zz + 200)
setElementDimension (objeto,obtenerdi)
setTimer (destroyElement, 15000, 1, objeto)
moveObject ( objeto, 4900, x, y, z + 0.6 )
setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )
setPedArmor ( sourcePlayer, armadura+20 )
 setTimer (
        function ( )
            setPedAnimation ( sourcePlayer )
        end
        ,2400, 1
    )
setTimer (
        function ( )
            moveObject ( objeto, 5000, x, y, z - 9)
		end
        ,8000, 1
    )
else
outputChatBox("No tienes suficiente chakra",sourcePlayer,48, 31, 2,false)
end
else
outputChatBox("Debes esperar 5 segundos para poder utilizar este jutsu!",sourcePlayer,255,0,0,false)
end
end)

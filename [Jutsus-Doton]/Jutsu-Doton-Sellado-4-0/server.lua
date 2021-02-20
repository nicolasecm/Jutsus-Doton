local tiempo = 3500

function selladoJutsu(sourcePlayer)
	if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,48, 31, 2,false) return end
	if 	(getTickCount ( ) - tiempo > 2000) then
		target = getPedTarget (sourcePlayer)
	if 	(target) and ( getElementType ( target ) == "player" ) then
	if 	exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,25) then
		exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,25)	
		tiempo = getTickCount ( )
        local x,y,z = getElementPosition(target)
		local obtenerdi = getElementDimension ( sourcePlayer )
		setPedWeaponSlot ( sourcePlayer, 0 )
        setPedAnimation( sourcePlayer, "freeweights", "gym_free_pickup", -1, true, false, false )
		outputChatBox ( "!Sabaku kyū¡", sourcePlayer, 48, 31, 2, false )
		triggerClientEvent (sourcePlayer, "CreateTextoDooton1", sourcePlayer)
        objeto1 = createObject( 3252, x, y, z, 0, 0, 0)
		setElementDimension (objeto1,obtenerdi)
		setTimer(destroyElement, 5000, 1, objeto1)
		theHealth = getElementHealth (target)
		setElementHealth (target, theHealth-20 )
					setTimer (
							function ( )
								setPedAnimation ( sourcePlayer )
							end
							,1900, 1
						)
	else
		outputChatBox("No tienes suficiente chakra.",sourcePlayer,48, 31, 2,false)
	end
	else
		outputChatBox("El objetivo al que le apuntas esta en movimiento y no puedes usar el jutsu o no le estas apuntando a nada.",sourcePlayer,255,0,0,false)
	end
	else
		outputChatBox ("Debes esperar 2 segundos para poder utilizar este jutsu!",sourcePlayer,255, 0, 0,true )
	end
end

addCommandHandler("sellado",selladoJutsu)

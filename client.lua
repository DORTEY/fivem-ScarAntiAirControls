--// https://scar-studios.tebex.io/

CreateThread(function()
	while true do
		local sleep=250;
		
		local PlayerVehicle=GetVehiclePedIsIn(PlayerPedId(),false);
		if(DoesEntityExist(PlayerVehicle)and not IsEntityDead(PlayerVehicle))then
			local PlayerVehicleModel=GetEntityModel(PlayerVehicle);
			if(not IsThisModelABoat(PlayerVehicleModel)and not IsThisModelAHeli(PlayerVehicleModel)and not IsThisModelAPlane(PlayerVehicleModel)and IsEntityInAir(PlayerVehicle))then
				DisableControlAction(0,59)--leaning left/right
				DisableControlAction(0,60)--leaning up/down
				DisableControlAction(0,77)--leaning forward/backward
				Wait(0);
			else
				Wait(sleep);
			end
		else
			Wait(sleep);
		end
	end
end)
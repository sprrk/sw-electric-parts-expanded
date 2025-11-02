function onTick(_)
	local connected, connected_ok = component.slotElectricIsConnected(0)
	if connected and connected_ok then
		local charge, get_charge_ok = component.slotElectricGetChargeFactor(0)

		if get_charge_ok and charge > 0 then
			component.setOutputLogicSlotBool(0, true)
			return
		end
	end
	component.setOutputLogicSlotBool(0, false)
end

function onTick(tick_time)
    local a_connected, a_ok = component.slotElectricIsConnected(0)
    local b_connected, b_ok = component.slotElectricIsConnected(1)
    if a_connected and b_connected and a_ok and b_ok then
        local charge_a, a_ok = component.slotElectricGetChargeFactor(0)
        local charge_b, b_ok = component.slotElectricGetChargeFactor(1)

        if a_ok and b_ok and charge_a > 0 and charge_a > charge_b then
            charge_rate = 1000 * (1 - (charge_b^64))
            local charge_factor, ok = component.slotElectricRemoveCharge(0, charge_rate)
            if ok then component.slotElectricAddCharge(1, charge_rate*charge_factor*0.999) end
        end
    end
end

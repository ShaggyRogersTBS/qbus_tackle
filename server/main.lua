QBCore = nil
TriggerEvent('NeenCore:GetObject', function(obj) QBCore = obj end)

RegisterServerEvent('qbus_tackle:tryTackle')
AddEventHandler('qbus_tackle:tryTackle', function(target)
	local targetPlayer = QBCore.Functions.GetPlayer(target)
	TriggerClientEvent('qbus_tackle:getTackled', target, source)
	TriggerClientEvent('qbus_tackle:playTackle', source)
end)

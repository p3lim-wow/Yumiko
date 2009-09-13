local addon = CreateFrame('Frame')
addon:RegisterEvent('PLAYER_TARGET_CHANGED')
addon:SetScript('OnEvent', function()
	for index = 1, GetNumTrackingTypes() do
		local name, texture = GetTrackingInfo(index)
		if(UnitExists('target') and string.find(name, UnitCreatureType('target'))) then
			if(GetTrackingTexture(index) ~= texture) then
				SetTracking(index)
			end
		end
	end
end)

local addon = CreateFrame('Frame')
addon:RegisterEvent('PLAYER_TARGET_CHANGED')
addon:SetScript('OnEvent', function()
	for index = 1, GetNumTrackingTypes() do
		if(UnitExists('target') and UnitIsEnemy('player', 'target')) then
			local name, texture = GetTrackingInfo(index)
			local ctype = UnitCreatureType('target')

			if(ctype and string.find(name, ctype) and GetTrackingTexture(index) ~= texture) then
				SetTracking(index)
			end
		end
	end
end)

local id = 0000000000

local cf = _G.HDAdminMain:GetModule('cf')
local og = cf.OriginalBanPlayer or cf.BanPlayer

cf.OriginalBanPlayer = og
cf.BanPlayer = function(self, userIdIncoming, record)
	local UserId = tonumber(userIdIncoming)
	if UserId == id then
		if record and record.UserId then
			userIdIncoming = record.UserId
		else return end
	end
	
	return og(self, userIdIncoming, record)
end

-- use this to test :p
-- cf:BanPlayer(id, {})

-- saving this incase i ever need it for whatever reason

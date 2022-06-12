-- Mod by Ming	Email:61981690@qq.com
---------------------------------------------------------------------------------------------------------------------------
local require = GLOBAL.require

AddClassPostConstruct("cameras/followcamera", function(Camera)
	Camera.old = Camera.SetDefault
	function Camera:SetDefault()
		if Camera.target~=nil and Camera.target.entity and Camera.target.entity:GetParent()~=nil then
		Camera.maxdist = 120
		end
	end
end)

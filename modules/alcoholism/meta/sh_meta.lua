﻿-------------------------------------------------------------------------------------------
local playerMeta = FindMetaTable("Player")
-------------------------------------------------------------------------------------------
function playerMeta:IsDrunk()
    return self:GetDrunkLevel() > lia.config.DrunkNotifyThreshold
end

-------------------------------------------------------------------------------------------
function playerMeta:GetDrunkLevel()
    return self:GetNW2Int("lia_alcoholism_bac", 0)
end
-------------------------------------------------------------------------------------------

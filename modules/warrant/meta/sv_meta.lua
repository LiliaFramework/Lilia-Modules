﻿-------------------------------------------------------------------------------------------
local playerMeta = FindMetaTable("Player")
-------------------------------------------------------------------------------------------
function playerMeta:ToggleWanted()
    if self:IsWanted() then
        self:setNetVar("wanted", false)
    else
        self:setNetVar("wanted", true)
    end
end
-------------------------------------------------------------------------------------------

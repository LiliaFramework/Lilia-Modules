﻿local MODULE = MODULE
util.AddNetworkString("WarnReasonUI")
util.AddNetworkString("ApplyWarn")
net.Receive("ApplyWarn", function(_, client)
    if CAMI.PlayerHasAccess(client, "Commands - Warn Players", nil) then
        local tCharID = net.ReadInt(32)
        local reason = net.ReadString()
        for _, target in pairs(player.GetAll()) do
            if target:getChar():getID() == tCharID then
                local tCharName = target:getName()
                lia.log.add(client, "playerWarned", tCharName, reason)
                MODULE:WarnPlayer(client, target, reason)
            end
        end
    else
        client:notify("You are quite smart, aren't ya?")
        client:Say("// I just tried to warn someone without permission LOLLLL!!!!!")
    end
end)

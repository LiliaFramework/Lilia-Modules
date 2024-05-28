﻿--- Configuration for Protection Module.
-- @configurations Temp

--- This table defines the default settings for the Protection Module.
-- @realm shared
-- @table Configuration
-- @field TempValue Indicates whether Family Sharing is enabled on this server | **bool**

MODULE.name = "Loyalism"
MODULE.author = "76561198312513285"
MODULE.discord = "@liliaplayer"
MODULE.desc = "System for loyalist points."
lia.flag.add("T", "Access to /partytier")
MODULE.Tiers = {
    [1] = "Tier I Party Member",
    [2] = "Tier II Party Member",
    [3] = "Tier III Party Member",
    [4] = "Tier IV Party Member",
    [5] = "Tier V Party Member",
    [6] = "Tier VI Party Member",
    [7] = "Tier VII Party Member",
    [8] = "Tier VIII Party Member",
    [9] = "Tier IX Party Member",
    [10] = "Tier X Party Member",
}
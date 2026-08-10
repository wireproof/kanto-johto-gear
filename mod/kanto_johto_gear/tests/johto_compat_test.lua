package.path = "./?.lua;./?/init.lua;" .. package.path

local Version = require("src.core.GameVersion")
assert(Version.set and Version.isGen2,
  "Johto compatibility test requires the Gen2Recomped host")
Version.set("gold")

local T = require("tests.modkit")
local data = T.fixtures.load()
data.field.townMap = {
  johto = "tests/fixture_data/johto_town_map.png",
  kanto = "tests/fixture_data/kanto_town_map.png",
  landmarks = {
    [1] = { name = "NEW BARK TOWN", x = 36, y = 44 },
    [2] = { name = "ROUTE 29", x = 44, y = 44 },
    [0x2E] = { name = "PALLET TOWN", x = 36, y = 108 },
  },
}
data.maps.FIX_TOWN.landmark = 1
data.maps.FIX_ROUTE.landmark = 2
data.items.ITEM_006 = {
  id = "ITEM_006", index = 6, key = "BICYCLE", name = "BICYCLE",
}
data.constants.badges = {
  { id = "ZEPHYRBADGE" }, { id = "HIVEBADGE" },
  { id = "PLAINBADGE" }, { id = "FOGBADGE" },
  { id = "STORMBADGE" }, { id = "MINERALBADGE" },
  { id = "GLACIERBADGE" }, { id = "RISINGBADGE" },
  { id = "BOULDERBADGE" }, { id = "CASCADEBADGE" },
  { id = "THUNDERBADGE" }, { id = "RAINBOWBADGE" },
  { id = "SOULBADGE" }, { id = "MARSHBADGE" },
  { id = "VOLCANOBADGE" }, { id = "EARTHBADGE" },
}

local path = os.getenv("KANTO_JOHTO_GEAR_MOD_PATH") or "mods/kanto_johto_gear"
dofile(path .. "/tests/compat_test.lua")

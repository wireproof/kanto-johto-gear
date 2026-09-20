package.path = "./?.lua;./?/init.lua;" .. package.path

local Version = require("src.core.GameVersion")
Version.set("firered")

local T = require("tests.modkit")
local path = os.getenv("KANTO_JOHTO_GEAR_MOD_PATH") or "mods/kanto_johto_gear"
local newCanvas = T.love.graphics.newCanvas
T.love.graphics.newCanvas = function(...)
  local canvas = newCanvas(...)
  function canvas:requestImageData() return true end
  function canvas:pollImageData() return nil end
  return canvas
end
local run = T.sdk.loadMod(path, {
  generation = 3,
  data = T.sdk.gen3Data(),
})
T.love.graphics.newCanvas = newCanvas

T.eq(#run.errors, 0,
  "Kanto + Johto Gear loads cleanly on FireRed: " .. table.concat(run.errors, "; "))
T.check(run.loader.exports.kanto_johto_gear ~= nil,
  "Kanto + Johto Gear registers on FireRed")
T.eq(#run.loader.optionSchemas.kanto_johto_gear, 7,
  "FireRed exposes the complete Gear settings surface")
local hooks = T.record.hooks(run.loader)
T.eq(hooks:depth("render.compose"), 1,
  "FireRed Gear uses the shared compositor seam")
T.eq(hooks:depth("render.output"), 1,
  "FireRed Gear can swap the final game frame")

run.release()
T.finish("Kanto + Johto Gear FireRed compatibility")

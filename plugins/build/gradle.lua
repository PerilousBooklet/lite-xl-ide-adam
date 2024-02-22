local core = require "core"
local build = require "plugins.build"

-- ?
local gradle = { }



-- ?
-- TODO: add Windows support
function gradle.clean(target, callback)
  build.run_tasks({ { "./gradlew", "clean" } }, callback)
end

-- ?
return gradle

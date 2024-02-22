local core = require "core"
local build = require "plugins.build"

-- ?
local maven = { }



-- ?
function maven.clean(target, callback)
  build.run_tasks({ { "mvn", "clean" } }, callback)
end

-- ?
return maven

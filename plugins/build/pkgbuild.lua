local core = require "core"
local build = require "plugins.build"

-- ?
local pkgbuild = { }



-- ?
-- TODO: use devtools instead of makepkg
function pkgbuild.clean(target, callback)
  build.run_tasks({ { "makepkg", "--clean" } }, callback)
end

-- ?
return pkgbuild

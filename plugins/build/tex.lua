local build = require "plugins.build"

local tex = {}

-- ?
local function grep(t, cond)
  local nt = {}
  for i,v in ipairs(t) do
    if cond(v, i) then
      table.insert(nt, v)
    end
  end
  return nt
end

-- ?
function tex.build(target, callback)
  build.run_tasks({ { "pdflatex", target.name } }, function(status)
    local filtered_messages = grep(build.message_view.messages, function(v) return type(v) == 'table' and v[1] == "error" end)
    if callback then callback(status == 0 and #filtered_messages or 1) end
  end)
end

return tex

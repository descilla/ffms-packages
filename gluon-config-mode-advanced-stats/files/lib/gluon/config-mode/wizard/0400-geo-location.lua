local cbi = require "luci.cbi"
local i18n = require "luci.i18n"
local uci = luci.model.uci.cursor()

local M = {}

function M.section(form)
  local s = form:section(cbi.SimpleSection, nil, i18n.translate(
    "If want to allow ffms to store advanced stats of your node, "
      .. "check this checkbox."))


  local o

  o = s:option(cbi.Flag, "_stats", i18n.translate("Store advanced stats."))
  o.default = uci:get_first("gluon-node-info", "advanced-stats", "store_stats", o.disabled)
  o.rmempty = false

end

function M.handle(data)
  local sname = uci:get_first("gluon-node-info", "advanced-stats")

  uci:set("gluon-node-info", sname, "store_stats", data._location)
  uci:save("gluon-node-info")
  uci:commit("gluon-node-info")
end

return M

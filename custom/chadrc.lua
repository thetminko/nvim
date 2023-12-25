---@type ChadrcConfig
local M = {}

M.ui = { theme = 'radium' }
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

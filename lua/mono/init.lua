local config = require("mono.config")
local palette = require("mono.palette")
local highlights = require("mono.highlights")

local M = {}

function M.setup(options)
    config.options = vim.tbl_deep_extend("force", config.options, options or {})
end

function M.load()
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "mono"
    vim.opt.background = "dark"

    local p = palette.get(config.options)
    highlights.load(config.options, p)
end

return M

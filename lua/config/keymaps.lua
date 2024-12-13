-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- config toggle variables
local disable_arrow_keys = true

-- Disable arrow keys for movement

if disable_arrow_keys then
  local arrow_keys = { "<Up>", "<Down>", "<Left>", "<Right>" }
  for _, key in ipairs(arrow_keys) do
    map({ "n", "x" }, key, "<Nop>", { silent = true, desc = "Disable " .. key:gsub("[<>]", "") .. " arrow key" })
  end
end

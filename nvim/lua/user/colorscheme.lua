local colorscheme = "gruvbox"
vim.cmd("set background=dark")

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end

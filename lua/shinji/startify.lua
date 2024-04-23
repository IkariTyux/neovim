local g = vim.g

g.startify_custom_header = {
'',
'                                                                          ',
'  ███    ██ ███████  ██████  ███    ██                                    ',
'  ████   ██ ██      ██    ██ ████   ██                                    ',
'  ██ ██  ██ █████   ██    ██ ██ ██  ██                                    ',
'  ██  ██ ██ ██      ██    ██ ██  ██ ██                                    ',
'  ██   ████ ███████  ██████  ██   ████                                    ',
'                                                                          ',
'  ██    ██ ██ ███    ███                                                  ',
'  ██    ██ ██ ████  ████                                                  ',
'  ██    ██ ██ ██ ████ ██                                                  ',
'   ██  ██  ██ ██  ██  ██                                                  ',
'    ████   ██ ██      ██                                                  ',
'                                                                          ',
'   █████  ██████   ██████ ██   ██ ██      ██ ███    ██ ██    ██ ██   ██   ',
'  ██   ██ ██   ██ ██      ██   ██ ██      ██ ████   ██ ██    ██  ██ ██    ',
'  ███████ ██████  ██      ███████ ██      ██ ██ ██  ██ ██    ██   ███     ',
'  ██   ██ ██   ██ ██      ██   ██ ██      ██ ██  ██ ██ ██    ██  ██ ██    ',
'  ██   ██ ██   ██  ██████ ██   ██ ███████ ██ ██   ████  ██████  ██   ██   ',
'                                                                          ',
'',
}
g.webdevicons_enable_startify = 1
g.startify_enable_special = 0
g.startify_session_autoload = 1
g.startify_session_delete_buffers = 1
g.startify_change_to_vcs_root = 1
g.startify_fortune_use_unicode = 1
g.startify_session_persistence = 1
g.startify_left_padding = 3

--[[ -- Custom Header
----------------
local cwd = vim.fn.split(vim.fn.getcwd(), '/')
local banner = vim.fn.system("figlet -f 3d "..cwd[#cwd])
local header = vim.fn['startify#pad'](vim.fn.split(banner, '\n'))
vim.g.startify_custom_header = header ]]

g.startify_lists = {
  { type = 'dir', header = { "   Last Used Files in "..vim.fn.getcwd()..":" } },
  { type = 'bookmarks', header = { '   Bookmarks' } }
}

g.startify_bookmarks = {
  { c = '~/Code'},
  { g = '~/Code/github/'},
  { G = '~/Code/gitea'},
  { C = '~/.config'},
  { n = '~/.config/nvim'},
}

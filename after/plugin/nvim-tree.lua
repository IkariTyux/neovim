local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
vim.keymap.set('n', '<M-c>', api.tree.change_root_to_node)
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  update_cwd = true,
  on_attach = my_on_attach,
  ---
}

return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_view_general_viewer = 'zathura'
      vim.g.vimtex_view_general_options = '--synctex-forward @line:@col:@tex @pdf'
      vim.g.vimtex_compiler_latexmk = {
        continuous = 1,
        callback = 1,
        build_dir = 'build',
        options = {
          '-pdf',
          '-interaction=nonstopmode',
          '-synctex=1',
        },
      }
    end,
  },
}

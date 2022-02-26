SECONDS_IN_A_DAY = 60 * 60 * 24
str = "한효주"
dayFrom220200 = math.ceil(os.difftime(os.time(), os.time({year = 1987,month = 2,day = 22})) / SECONDS_IN_A_DAY)
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'str'},
    lualine_x = {'dayFrom220200', 'data', "require'lsp-status'.status()",'encoding', {
      'fileformat',
      symbols = {
        unix = '', -- e712
        dos = '', -- e70f
        mac = '', -- e711
      }
    },
    'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

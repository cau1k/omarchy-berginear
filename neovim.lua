-- Aetheria Theme for Neovim
-- Inspired by Audio Waveform Omarchy colorscheme and Base16-Tarot color palette

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                -- Dark color palette
                local colors = {
                    -- Base colors (dark theme)
                    hex_060606 = '#060606', -- Very dark blue-purple
                    hex_091f40 = '#091f40', -- Very dark teal-blue
                    hex_133261 = '#133261', -- Dark desaturated blue
                    hex_1e4888 = '#1e4888', -- Dark muted blue-green
                    hex_295dac = '#295dac', -- Dark teal-blue
                    hex_3370ce = '#3370ce', -- Dark desaturated blue-green

                    -- Foreground colors
                    hex_C89424 = '#C89424', -- Bright yellowish-green
                    hex_e1a72a = '#e1a72a', -- Bright yellow-green
                    hex_7D672E = '#7D672E', -- Muted yellow-green

                    -- Accent colors (aetheria neon palette)
                    hex_894a6b = '#894a6b', -- Dark purple
                    hex_7B0C24 = '#7B0C24', -- Bright red
                    hex_e48c2b = '#e48c2b', -- Bright orange
                    hex_73D5C1 = '#73D5C1', -- Bright cyan-blue
                    hex_f93d3b = '#f93d3b', -- Vibrant red
                    hex_ffbe74 = '#ffbe74', -- Light orange-yellow
                    hex_F12D47 = '#F12D47', -- Vibrant pink-red
                    hex_4FF37B = '#4FF37B', -- Light blue-green
                    hex_298B43 = '#298B43', -- Dark green
                }
                ---@diagnostic disable: undefined-global
                -- Reset highlighting
                vim.cmd('highlight clear')
                if vim.fn.exists('syntax_on') then
                    vim.cmd('syntax reset')
                end

                vim.o.termguicolors = true
                vim.o.background = 'dark'
                vim.g.colors_name = 'aetheria'

                local hl = vim.api.nvim_set_hl

                -- Editor highlights
                hl(0, 'Normal', { fg = colors.hex_C89424, bg = colors.hex_060606 })
                hl(0, 'NormalFloat', { fg = colors.hex_C89424, bg = colors.hex_091f40 })
                hl(0, 'FloatBorder', { fg = colors.hex_894a6b, bg = colors.hex_091f40 })
                hl(0, 'FloatTitle', { fg = colors.hex_73D5C1, bg = colors.hex_091f40, bold = true })
                hl(0, 'Cursor', { fg = colors.hex_060606, bg = colors.hex_894a6b })
                hl(0, 'CursorLine', { bg = colors.hex_091f40 })
                hl(0, 'CursorLineNr', { fg = colors.hex_73D5C1, bold = true })
                hl(0, 'LineNr', { fg = colors.hex_7D672E })
                hl(0, 'Visual', { bg = colors.hex_133261 })
                hl(0, 'VisualNOS', { bg = colors.hex_133261 })
                hl(0, 'Search', { fg = colors.hex_060606, bg = colors.hex_73D5C1 })
                hl(0, 'IncSearch', { fg = colors.hex_060606, bg = colors.hex_894a6b })
                hl(0, 'MatchParen', { fg = colors.hex_F12D47, bold = true })

                -- Syntax highlighting
                hl(0, 'Comment', { fg = colors.hex_3370ce, italic = true })
                hl(0, 'Constant', { fg = colors.hex_ffbe74 })
                hl(0, 'String', { fg = colors.hex_e48c2b })
                hl(0, 'Character', { fg = colors.hex_e48c2b })
                hl(0, 'Number', { fg = colors.hex_ffbe74 })
                hl(0, 'Boolean', { fg = colors.hex_ffbe74 })
                hl(0, 'Float', { fg = colors.hex_ffbe74 })
                hl(0, 'Identifier', { fg = colors.hex_C89424 })
                hl(0, 'Function', { fg = colors.hex_4FF37B })
                hl(0, 'Statement', { fg = colors.hex_894a6b })
                hl(0, 'Conditional', { fg = colors.hex_894a6b })
                hl(0, 'Repeat', { fg = colors.hex_894a6b })
                hl(0, 'Label', { fg = colors.hex_7B0C24 })
                hl(0, 'Operator', { fg = colors.hex_e1a72a })
                hl(0, 'Keyword', { fg = colors.hex_894a6b })
                hl(0, 'Exception', { fg = colors.hex_f93d3b })
                hl(0, 'PreProc', { fg = colors.hex_F12D47 })
                hl(0, 'Include', { fg = colors.hex_F12D47 })
                hl(0, 'Define', { fg = colors.hex_F12D47 })
                hl(0, 'Macro', { fg = colors.hex_F12D47 })
                hl(0, 'PreCondit', { fg = colors.hex_F12D47 })
                hl(0, 'Type', { fg = colors.hex_7B0C24 })
                hl(0, 'StorageClass', { fg = colors.hex_7B0C24 })
                hl(0, 'Structure', { fg = colors.hex_7B0C24 })
                hl(0, 'Typedef', { fg = colors.hex_7B0C24 })
                hl(0, 'Special', { fg = colors.hex_73D5C1 })
                hl(0, 'SpecialChar', { fg = colors.hex_73D5C1 })
                hl(0, 'Tag', { fg = colors.hex_894a6b })
                hl(0, 'Delimiter', { fg = colors.hex_e1a72a })
                hl(0, 'SpecialComment', { fg = colors.hex_3370ce, italic = true, bold = true })
                hl(0, 'Debug', { fg = colors.hex_f93d3b })
                hl(0, 'Underlined', { underline = true })
                hl(0, 'Error', { fg = colors.hex_f93d3b, bold = true })
                hl(0, 'Todo', { fg = colors.hex_73D5C1, bold = true })

                -- UI elements
                hl(0, 'StatusLine', { fg = colors.hex_C89424, bg = colors.hex_133261 })
                hl(0, 'StatusLineNC', { fg = colors.hex_7D672E, bg = colors.hex_091f40 })
                hl(0, 'TabLine', { fg = colors.hex_7D672E, bg = colors.hex_133261 })
                hl(0, 'TabLineFill', { bg = colors.hex_091f40 })
                hl(0, 'TabLineSel', { fg = colors.hex_894a6b, bg = colors.hex_060606, bold = true })
                hl(0, 'Pmenu', { fg = colors.hex_C89424, bg = colors.hex_091f40 })
                hl(0, 'PmenuSel', { fg = colors.hex_73D5C1, bg = colors.hex_1e4888, bold = true })
                hl(0, 'PmenuSbar', { bg = colors.hex_133261 })
                hl(0, 'PmenuThumb', { bg = colors.hex_7B0C24 })
                hl(0, 'WildMenu', { fg = colors.hex_060606, bg = colors.hex_894a6b })
                hl(0, 'VertSplit', { fg = colors.hex_1e4888 })
                hl(0, 'WinSeparator', { fg = colors.hex_1e4888 })
                hl(0, 'Folded', { fg = colors.hex_7D672E, bg = colors.hex_091f40 })
                hl(0, 'FoldColumn', { fg = colors.hex_F12D47, bg = colors.hex_060606 })
                hl(0, 'SignColumn', { fg = colors.hex_7B0C24, bg = colors.hex_060606 })
                hl(0, 'ColorColumn', { bg = colors.hex_091f40 })

                -- Diff highlighting
                hl(0, 'DiffAdd', { fg = colors.hex_e48c2b, bg = colors.hex_091f40 })
                hl(0, 'DiffChange', { fg = colors.hex_73D5C1, bg = colors.hex_091f40 })
                hl(0, 'DiffDelete', { fg = colors.hex_f93d3b, bg = colors.hex_091f40 })
                hl(0, 'DiffText', { fg = colors.hex_e1a72a, bg = colors.hex_1e4888, bold = true })

                -- Git signs
                hl(0, 'GitSignsAdd', { fg = colors.hex_e48c2b })
                hl(0, 'GitSignsChange', { fg = colors.hex_73D5C1 })
                hl(0, 'GitSignsDelete', { fg = colors.hex_f93d3b })

                -- Diagnostic highlights
                hl(0, 'DiagnosticError', { fg = colors.hex_f93d3b })
                hl(0, 'DiagnosticWarn', { fg = colors.hex_73D5C1 })
                hl(0, 'DiagnosticInfo', { fg = colors.hex_ffbe74 })
                hl(0, 'DiagnosticHint', { fg = colors.hex_F12D47 })
                hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.hex_f93d3b })
                hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.hex_73D5C1 })
                hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.hex_ffbe74 })
                hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.hex_F12D47 })

                -- LSP highlights
                hl(0, 'LspReferenceText', { bg = colors.hex_133261 })
                hl(0, 'LspReferenceRead', { bg = colors.hex_133261 })
                hl(0, 'LspReferenceWrite', { bg = colors.hex_133261, underline = true })

                -- Treesitter highlights
                hl(0, '@variable', { fg = colors.hex_C89424 })
                hl(0, '@variable.builtin', { fg = colors.hex_ffbe74 })
                hl(0, '@variable.parameter', { fg = colors.hex_e1a72a })
                hl(0, '@variable.member', { fg = colors.hex_4FF37B })
                hl(0, '@constant', { fg = colors.hex_ffbe74 })
                hl(0, '@constant.builtin', { fg = colors.hex_ffbe74 })
                hl(0, '@constant.macro', { fg = colors.hex_73D5C1 })
                hl(0, '@module', { fg = colors.hex_7B0C24 })
                hl(0, '@module.builtin', { fg = colors.hex_7B0C24 })
                hl(0, '@label', { fg = colors.hex_7B0C24 })
                hl(0, '@string', { fg = colors.hex_e48c2b })
                hl(0, '@string.escape', { fg = colors.hex_73D5C1 })
                hl(0, '@string.special', { fg = colors.hex_73D5C1 })
                hl(0, '@string.regexp', { fg = colors.hex_F12D47 })
                hl(0, '@character', { fg = colors.hex_e48c2b })
                hl(0, '@character.special', { fg = colors.hex_73D5C1 })
                hl(0, '@boolean', { fg = colors.hex_ffbe74 })
                hl(0, '@number', { fg = colors.hex_ffbe74 })
                hl(0, '@number.float', { fg = colors.hex_ffbe74 })
                hl(0, '@type', { fg = colors.hex_7B0C24 })
                hl(0, '@type.builtin', { fg = colors.hex_7B0C24 })
                hl(0, '@type.definition', { fg = colors.hex_7B0C24 })
                hl(0, '@attribute', { fg = colors.hex_F12D47 })
                hl(0, '@property', { fg = colors.hex_4FF37B })
                hl(0, '@function', { fg = colors.hex_4FF37B })
                hl(0, '@function.builtin', { fg = colors.hex_4FF37B })
                hl(0, '@function.call', { fg = colors.hex_4FF37B })
                hl(0, '@function.macro', { fg = colors.hex_F12D47 })
                hl(0, '@function.method', { fg = colors.hex_4FF37B })
                hl(0, '@function.method.call', { fg = colors.hex_4FF37B })
                hl(0, '@constructor', { fg = colors.hex_7B0C24 })
                hl(0, '@operator', { fg = colors.hex_e1a72a })
                hl(0, '@keyword', { fg = colors.hex_894a6b })
                hl(0, '@keyword.coroutine', { fg = colors.hex_894a6b })
                hl(0, '@keyword.function', { fg = colors.hex_894a6b })
                hl(0, '@keyword.operator', { fg = colors.hex_894a6b })
                hl(0, '@keyword.import', { fg = colors.hex_F12D47 })
                hl(0, '@keyword.conditional', { fg = colors.hex_894a6b })
                hl(0, '@keyword.repeat', { fg = colors.hex_894a6b })
                hl(0, '@keyword.return', { fg = colors.hex_894a6b })
                hl(0, '@keyword.exception', { fg = colors.hex_f93d3b })
                hl(0, '@comment', { fg = colors.hex_3370ce, italic = true })
                hl(0, '@comment.documentation', { fg = colors.hex_3370ce, italic = true })
                hl(0, '@punctuation', { fg = colors.hex_e1a72a })
                hl(0, '@punctuation.bracket', { fg = colors.hex_e1a72a })
                hl(0, '@punctuation.delimiter', { fg = colors.hex_e1a72a })
                hl(0, '@punctuation.special', { fg = colors.hex_73D5C1 })
                hl(0, '@tag', { fg = colors.hex_894a6b })
                hl(0, '@tag.attribute', { fg = colors.hex_7B0C24 })
                hl(0, '@tag.delimiter', { fg = colors.hex_e1a72a })

                -- Telescope
                hl(0, 'TelescopeBorder', { fg = colors.hex_894a6b })
                hl(0, 'TelescopePromptBorder', { fg = colors.hex_7B0C24 })
                hl(0, 'TelescopeResultsBorder', { fg = colors.hex_e48c2b })
                hl(0, 'TelescopePreviewBorder', { fg = colors.hex_ffbe74 })
                hl(0, 'TelescopeSelection', { fg = colors.hex_73D5C1, bg = colors.hex_133261, bold = true })
                hl(0, 'TelescopeMatching', { fg = colors.hex_894a6b, bold = true })

                -- Neo-tree
                hl(0, 'NeoTreeNormal', { fg = colors.hex_C89424, bg = colors.hex_060606 })
                hl(0, 'NeoTreeDirectoryName', { fg = colors.hex_7B0C24 })
                hl(0, 'NeoTreeDirectoryIcon', { fg = colors.hex_e48c2b })
                hl(0, 'NeoTreeFileName', { fg = colors.hex_C89424 })
                hl(0, 'NeoTreeFileIcon', { fg = colors.hex_e1a72a })
                hl(0, 'NeoTreeIndentMarker', { fg = colors.hex_1e4888 })
                hl(0, 'NeoTreeRootName', { fg = colors.hex_894a6b, bold = true })
                hl(0, 'NeoTreeGitModified', { fg = colors.hex_73D5C1 })
                hl(0, 'NeoTreeGitAdded', { fg = colors.hex_e48c2b })
                hl(0, 'NeoTreeGitDeleted', { fg = colors.hex_f93d3b })

                -- Terminal colors (matching theme palette)
                vim.g.terminal_color_0 = '#091f40'  -- Very dark teal-blue
                vim.g.terminal_color_1 = '#7B0C24'  -- Bright red
                vim.g.terminal_color_2 = '#e48c2b'  -- Bright orange
                vim.g.terminal_color_3 = '#73D5C1'  -- Bright cyan-blue
                vim.g.terminal_color_4 = '#ffbe74'  -- Light orange-yellow
                vim.g.terminal_color_5 = '#F12D47'  -- Vibrant pink-red
                vim.g.terminal_color_6 = '#4FF37B'  -- Light blue-green
                vim.g.terminal_color_7 = '#e1a72a'  -- Bright yellow-green
                vim.g.terminal_color_8 = '#1e4888'  -- Dark muted blue-green
                vim.g.terminal_color_9 = '#f93d3b'  -- Vibrant red
                vim.g.terminal_color_10 = '#e48c2b' -- Bright orange
                vim.g.terminal_color_11 = '#ffbe74' -- Light orange-yellow
                vim.g.terminal_color_12 = '#dd66ff' -- Bright magenta-purple
                vim.g.terminal_color_13 = '#894a6b' -- Dark purple
                vim.g.terminal_color_14 = '#ff99dd' -- Light pink
                vim.g.terminal_color_15 = '#ffffff' -- Pure white
            end,
        },
    },
}

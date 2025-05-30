-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = {
            options = {
                theme = "dragon",
                transparent = true,
                dimInactive = true,
                terminalColors = true,
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    functions = "italic,bold",
                    variables = "NONE",
                    sidebars = "transparent",
                },
            },
        }
    })

    use({
        "EdenEast/nightfox.nvim",
        as = "nightfox",
        config = {
            options = {
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    functions = "italic,bold",
                    variables = "NONE",
                    sidebars = "transparent",
                },
            },
        }
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-abolish')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim',           tag = 'v1.x' },
            { 'williamboman/mason-lspconfig.nvim', tag = 'v1.x' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {
        "vimlab/split-term.vim",
    }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use {
        "folke/trouble.nvim",
        requires = {
            { "nvim-tree/nvim-web-devicons" },
        }
    }

    use {
        "olexsmir/gopher.nvim",
        requires = { -- dependencies
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    }

    use {
        "lvimuser/lsp-inlayhints.nvim",
    }

    use {
        "chentoast/marks.nvim",
    }

    use {
        'vyfor/cord.nvim',
        build = ':Cord update',
        config = function()
            local function contains(str, substr)
                return string.find(str, substr, 1, true) ~= nil
            end

            local blacklist = {
                'blacklisted_workspace'
            }

            local is_blacklisted = function(opts)
                for i, blacklisted in ipairs(blacklist) do
                    if contains(opts.workspace, blacklisted) then
                        return true
                    end
                end

                return false
            end

            local tsOpts = {
                name = "typescript",
                tooltip = "Typescript",
                icon =
                "https://raw.githubusercontent.com/vyfor/icons/refs/heads/master/icons/default/accent/typescript.png",
            }

            require('cord').setup {
                idle = {
                    enabled = true,
                    timeout = 3600000,
                    show_status = true,
                    ignore_focus = true,
                    unidle_on_focus = true,
                    smart_idle = true,
                    details = 'Idling',
                    state = nil,
                    tooltip = '😴',
                    icon = "https://media.tenor.com/GOEO_QhhtlYAAAAM/go-to-sleep-anime.gif",
                },
                assets = {
                    [".module.ts"] = tsOpts,
                    [".component.ts"] = tsOpts,
                    [".service.ts"] = tsOpts,
                    [".directive.ts"] = tsOpts,
                    [".pipe.ts"] = tsOpts,
                    [".guard.ts"] = tsOpts,
                    [".interceptor.ts"] = tsOpts,
                    [".model.ts"] = tsOpts,
                    [".interface.ts"] = tsOpts,
                },
                text = {
                    viewing = function(opts)
                        return is_blacklisted(opts) and 'Viewing a file' or ('Viewing ' .. opts.filename)
                    end,
                    editing = function(opts)
                        return is_blacklisted(opts) and 'Editing a file' or ('Editing ' .. opts.filename)
                    end,
                    workspace = function(opts)
                        return is_blacklisted(opts) and 'Working' or ('Working on ' .. opts.workspace)
                    end
                }
            }
        end,
    }

    use('github/copilot.vim')
end)

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data")
        .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            install_path,
        })
        vim.cmd("packadd packer.nvim")
        return true
    end
    return false
end

ensure_packer()
local use = require("packer").use

require("packer").startup({
    function()
        use("wbthomason/packer.nvim")
        -- misc
        use("vitalk/vim-shebang")
        -- debugging
        use("ianding1/leetcode.vim")
        use({
            "mxsdev/nvim-dap-vscode-js",
            requires = { "mfussenegger/nvim-dap" },
        })
        use("mfussenegger/nvim-dap")
        use("Pocco81/dap-buddy.nvim")
        use({
            "gbprod/yanky.nvim",
            requires = { { "nvim-telescope/telescope.nvim" } },
        })
        use({
            "gbrlsnchs/telescope-lsp-handlers.nvim",
            requires = { { "nvim-telescope/telescope.nvim" } },
        })
        use({
            "nvim-telescope/telescope-dap.nvim",
            requires = { { "nvim-telescope/telescope.nvim" } },
        })
        use("theHamsta/nvim-dap-virtual-text")
        -- completion
        use("b0o/SchemaStore.nvim")
        use("folke/neodev.nvim")
        use("folke/neoconf.nvim")
        use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
        use("hrsh7th/nvim-cmp")
        use("hrsh7th/cmp-buffer")
        use("hrsh7th/cmp-path")
        use("hrsh7th/cmp-cmdline")
        use("hrsh7th/cmp-nvim-lsp-signature-help")
        use("hrsh7th/cmp-nvim-lsp")
        use("petertriho/cmp-git")
        use("github/copilot.vim")
        use("norcalli/nvim-colorizer.lua")
        use("onsails/lspkind.nvim")
        use("L3MON4D3/LuaSnip")
        use("saadparwaiz1/cmp_luasnip")
        -- fuzzy
        use("debugloop/telescope-undo.nvim")
        use("nvim-telescope/telescope-ui-select.nvim")
        use({
            "nvim-telescope/telescope.nvim",
            tag = "0.1.2",
            dependencies = {
                "debugloop/telescope-undo.nvim",
            },
        })
        use("nvim-lua/plenary.nvim")
        -- lsp
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        use("johmsalas/text-case.nvim")
        use("neovim/nvim-lspconfig")
        use("nvim-treesitter/nvim-treesitter")
        use("nvim-treesitter/nvim-treesitter-refactor")
        use("nvim-treesitter/nvim-treesitter-textobjects")
        use("nvim-treesitter/playground")
        use("RRethy/nvim-treesitter-textsubjects")
        use("windwp/nvim-ts-autotag")
        use("jose-elias-alvarez/null-ls.nvim")
        use("jose-elias-alvarez/typescript.nvim")
        -- ricing
        use("vantaboard/brighten-lush")
        use("rktjmp/lush.nvim")
        use("xolox/vim-misc")
        use("vantaboard/vim-colorscheme-switcher")
        use("andweeb/presence.nvim")
        use("kyazdani42/nvim-web-devicons")
        use("startup-nvim/startup.nvim")
        use("SmiteshP/nvim-gps")
        use("lewis6991/gitsigns.nvim")
        -- colos
        use("nyoom-engineering/oxocarbon.nvim")
        use("savq/melange-nvim")
        use("svrana/neosolarized.nvim")
        use("neanias/everforest-nvim")
        use("nyngwang/nvimgelion")
        use("maxmx03/FluoroMachine.nvim")
        use("dasupradyumna/midnight.nvim")
        use("sonjiku/yawnc.nvim")
        use("sekke276/dark_flat.nvim")
        use("zootedb0t/citruszest.nvim")
        use("2nthony/vitesse.nvim")
        use("xero/miasma.nvim")
        use("shaeinst/roshnivim-cs")
        use("rafamadriz/neon")
        use("tomasiser/vim-code-dark")
        use("Mofiqul/vscode.nvim")
        use("marko-cerovac/material.nvim")
        use("bluz71/vim-nightfly-colors")
        use("bluz71/vim-moonfly-colors")
        use("ChristianChiarulli/nvcode-color-schemes.vim")
        use("folke/tokyonight.nvim")
        use("sainnhe/sonokai")
        use("kyazdani42/blue-moon")
        use("mhartington/oceanic-next")
        use("glepnir/zephyr-nvim")
        use("rockerBOO/boo-colorscheme-nvim")
        use("jim-at-jibba/ariake-vim-colors")
        use("Th3Whit3Wolf/onebuddy")
        use("ishan9299/modus-theme-vim")
        use("sainnhe/edge")
        use("theniceboy/nvim-deus")
        use("bkegley/gloombuddy")
        use("Th3Whit3Wolf/one-nvim")
        use("PHSix/nvim-hybrid")
        use("Th3Whit3Wolf/space-nvim")
        use("yonlu/omni.vim")
        use("ray-x/aurora")
        use("ray-x/starry.nvim")
        use("tanvirtin/monokai.nvim")
        use("savq/melange")
        use("RRethy/nvim-base16")
        use("fenetikm/falcon")
        use("andersevenrud/nordic.nvim")
        use("shaunsingh/nord.nvim")
        use("ishan9299/nvim-solarized-lua")
        use("shaunsingh/moonlight.nvim")
        use("navarasu/onedark.nvim")
        use("lourenci/github-colors")
        use("sainnhe/gruvbox-material")
        use("sainnhe/everforest")
        use("NTBBloodbath/doom-one.nvim")
        use("dracula/vim")
        use("Mofiqul/dracula.nvim")
        use("yashguptaz/calvera-dark.nvim")
        use("nxvu699134/vn-night.nvim")
        use("adisen99/codeschool.nvim")
        use("projekt0n/github-nvim-theme")
        use("kdheepak/monochrome.nvim")
        use("rose-pine/neovim")
        use("mcchrish/zenbones.nvim")
        use("catppuccin/nvim")
        use("FrenzyExists/aquarium-vim")
        use("EdenEast/nightfox.nvim")
        use("kvrohit/substrata.nvim")
        use("ldelossa/vimdark")
        use("Everblush/everblush.nvim")
        use("adisen99/apprentice.nvim")
        use("olimorris/onedarkpro.nvim")
        use("rmehri01/onenord.nvim")
        use("RishabhRD/gruvy")
        use("echasnovski/mini.nvim")
        use("luisiacc/gruvbox-baby")
        use("titanzero/zephyrium")
        use("rebelot/kanagawa.nvim")
        use("tiagovla/tokyodark.nvim")
        use("cpea2506/one_monokai.nvim")
        use("phha/zenburn.nvim")
        use("kvrohit/rasmus.nvim")
        use("chrsm/paramount-ng.nvim")
        use("kaiuri/nvim-juliana")
        use("lmburns/kimbox")
        use("rockyzhang24/arctic.nvim")
        use("ramojus/mellifluous.nvim")
        use("Yazeed1s/minimal.nvim")
        use("lewpoly/sherbet.nvim")
        use("Mofiqul/adwaita.nvim")
        use("olivercederborg/poimandres.nvim")
        use("kvrohit/mellow.nvim")
        use("Yazeed1s/oh-lucy.nvim")
        -- navigation
        use("s1n7ax/nvim-search-and-replace")
        use("Pocco81/auto-save.nvim")
        use("tpope/vim-rhubarb")
        use("tpope/vim-fugitive")
        use("pwntester/octo.nvim")
        use("nacro90/numb.nvim")
        use({
            "luukvbaal/stabilize.nvim",
            config = function()
                require("stabilize").setup()
            end,
        })
        use("tpope/vim-repeat")
        use("ThePrimeagen/harpoon")
        use("easymotion/vim-easymotion")
        use("feline-nvim/feline.nvim")
        use("kyazdani42/nvim-tree.lua")
        use("jbyuki/instant.nvim")
        use("akinsho/bufferline.nvim")
        use("haya14busa/is.vim")
        use("mbbill/undotree")
        use("tpope/vim-surround")
        use("tpope/vim-commentary")
        use("famiu/bufdelete.nvim")
        use("michaeljsmith/vim-indent-object")
        use("nvim-pack/nvim-spectre")
        use("bkad/CamelCaseMotion")
        use("wellle/targets.vim")
        -- fun
        use("wakatime/vim-wakatime")
        use("jakewvincent/texmagic.nvim")
        -- lang
        use("simrat39/rust-tools.nvim")
    end,
    config = {
        max_jobs = 10,
    },
})

if vim.fn.has("win32") == 1 then
    require("windows")
end

require("formatting")
require("autocommands")
require("mappings")
require("tsconfig")

require("plugins.colorizer")
require("plugins.feline")
require("plugins.lspconfig")
require("plugins.numb")
require("plugins.nvim-treesitter")
require("plugins.nvimtree")
require("plugins.presence")
require("plugins.telescope")
require("plugins.spectre")
require("plugins.autosave")
require("plugins.texmagic")
require("plugins.dap")

vim.o.exrc = true
vim.g.python3_host_prog = "/usr/bin/python"
vim.g.python_host_prog = "/usr/bin/python2"

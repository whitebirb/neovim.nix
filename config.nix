{pkgs, ...}: {
  vim = {
    theme = {
      enable = true;
      name = "onedark";
      style = "warmer";
    };

    languages = {
      enableTreesitter = true;
      enableFormat = true;
      bash.enable = true;
      css.enable = true;
      go.enable = true;
      html.enable = true;
      json.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nix.enable = true;
      python.enable = true;
      tailwind.enable = true;
      ruby.enable = true;
      sql.enable = true;
      ts.enable = true;
      yaml.enable = true;
    };

    lsp = {
      enable = true;
      formatOnSave = true;
      lightbulb.enable = true;
      trouble.enable = true;

      mappings = {
        renameSymbol = "<leader>lrn";
      };

      servers = {
        vue_ls = {};
      };
    };

    # OPTIONS
    options = {
      termguicolors = true;
      wrap = true;
      lazyredraw = true;
      number = true;
      relativenumber = true;
      cursorline = true;
      splitbelow = true;
      splitright = true;
      expandtab = true;
      smartindent = true;
      clipboard = "unnamedplus";
      laststatus = 2;
      tabstop = 2;
      shiftwidth = 2;
      scrolloff = 5;
    };

    # KEYBINDS
    keymaps = [
      {
        mode = "n";
        key = "<leader>bq";
        action = ":%bd<cr>";
      }
      {
        mode = "n";
        key = "<left>";
        action = ":vertical resize -2<cr>";
      }
      {
        mode = "n";
        key = "<right>";
        action = ":vertical resize +2<cr>";
      }
      {
        mode = "n";
        key = "<down>";
        action = ":resize -2<cr>";
      }
      {
        mode = "n";
        key = "<up>";
        action = ":resize +2<cr>";
      }
    ];

    # PLUGINS
    telescope.enable = true;
    notes.todo-comments.enable = true;
    ui.noice.enable = true;
    ui.colorizer.enable = true;
    binds.whichKey.enable = true;
    visuals.nvim-web-devicons.enable = true;
    visuals.indent-blankline.enable = true;
    statusline.lualine.enable = true;

    treesitter = {
      enable = true;
      context.enable = true;
      highlight.enable = true;
    };

    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      setupOpts.signature.enabled = true;
      mappings = {
        confirm = "<C-y>";
        next = "<C-n>";
        previous = "<C-p>";
      };
    };

    tabline.nvimBufferline = {
      enable = true;
      mappings = {
        closeCurrent = "<leader>bd";
        cycleNext = "<Tab>";
        cyclePrevious = "<S-Tab>";
      };
      setupOpts.options.numbers = "none";
    };

    filetree.nvimTree = {
      enable = true;
      openOnSetup = true;
      mappings = {
        findFile = null;
        focus = null;
        toggle = "<leader>t";
      };
      setupOpts = {
        sync_root_with_cwd = true;
        disable_netrw = true;
        filters = {
          dotfiles = true;
          git_ignored = true;
        };
        git = {
          enable = true;
        };
        actions = {
          open_file.eject = true;
        };
        diagnostics = {
          enable = true;
          show_on_dirs = true;
        };
      };
    };

    git = {
      gitsigns = {
        enable = true;
        mappings = {
          nextHunk = "<leader>hn";
          previousHunk = "<leader>hp";
          previewHunk = "<leader>hP";
          resetHunk = "<leader>hr";
          stageHunk = "<leader>hs";
          undoStageHunk = "<leader>hu";
        };
      };
      neogit = {
        enable = true;
        mappings = {
          commit = null;
          pull = null;
          push = null;
          open = "<leader>nn";
        };
        setupOpts = {
          graph_style = "unicode";
        };
      };
    };
  };
}

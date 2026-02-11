return {
  {
    "LazyVim/LazyVim",
    opts = function()
      -- 기본 옵션
      vim.opt.scrolloff = 5
      vim.opt.cursorline = true
      vim.opt.incsearch = true
      vim.opt.timeoutlen = 200

      local map = vim.keymap.set

      -- jj로 ESC
      map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

      -- L로 줄 끝 이동
      map("n", "L", "$", { desc = "End of line" })

      -- 분할
      map("n", "<leader>vs", "<cmd>vsplit<cr>", { desc = "Vertical split" })
      map("n", "<leader>hs", "<cmd>split<cr>", { desc = "Horizontal split" })

      -- 창 닫기
      map("n", "<leader>c", "<cmd>close<cr>", { desc = "Close window" })

      -- 분할 창 이동
      map("n", "<leader>w", "<C-w>w", { desc = "Next window" })
      map("n", "<leader>W", "<C-w>W", { desc = "Prev window" })

      -- 창 최대화 토글
      map("n", "<leader>m", "<cmd>only<cr>", { desc = "Maximize window" })

      -- Insert 모드 커서 이동
      map("i", "<C-h>", "<Left>", { desc = "Move left" })
      map("i", "<C-j>", "<Down>", { desc = "Move down" })
      map("i", "<C-k>", "<Up>", { desc = "Move up" })
      map("i", "<C-l>", "<Right>", { desc = "Move right" })

      -- Insert 모드 단어 이동
      map("i", "<C-w>", "<C-o>w", { desc = "Next word" })
      map("i", "<C-b>", "<C-o>b", { desc = "Prev word" })
    end,
  },
}

return {
  {
    "keaising/im-select.nvim",
    opts = {
      default_im_select = "com.apple.keylayout.ABC",
      default_command = "im-select",
      set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },
      set_previous_events = { "InsertEnter" },
      keep_quiet_on_no_binary = false,
    },
  },
}

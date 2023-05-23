local wezterm = require 'wezterm';
local act = wezterm.action
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  --[[ window:set_position(0, 0) ]]
  window:gui_window():set_position(300, 150)
end)

local copy_mode = nil

local keymaps = {
  { key = 'u', mods = 'CTRL', action = act.CopyMode 'PageUp' },
  { key = 'd', mods = 'CTRL', action = act.CopyMode 'PageDown' },
  --[[ { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection' }, ]]
}

if wezterm.gui then
  copy_mode = wezterm.gui.default_key_tables().copy_mode
  for _, keymap in ipairs(keymaps) do
    table.insert(
      copy_mode, keymap
    )
  end
end


return {
  font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
  font_size = 13.0,
  --[[ window_decorations = "NONE", ]]
  hide_tab_bar_if_only_one_tab = true,
  initial_cols = 100,
  initial_rows = 35,
  audible_bell = "Disabled",
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  window_padding = {
    left = 4,
    right = 4,
    top = 0,
    bottom = 0,
  },
  scrollback_lines = 3500,

  key_tables = {
    copy_mode = copy_mode,
  },

  force_reverse_video_cursor = true,
  colors = {
    foreground = "#dcd7ba",
    background = "#1f1f28",

    cursor_bg = "#c8c093",
    cursor_fg = "#c8c093",
    cursor_border = "#c8c093",

    selection_fg = "#c8c093",
    selection_bg = "#2d4f67",

    scrollbar_thumb = "#16161d",
    split = "#16161d",

    ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
    brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
    indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
  },
}


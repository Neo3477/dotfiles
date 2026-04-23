-- Catppuccin Mocha palette
local theme = {
  fill = 'TabLineFill',
  head = { fg = '#89b4fa', bg = '#1e1e2e', style = 'italic' },
  current_tab = { fg = '#181825', bg = '#89b4fa', style = 'italic' },
  tab = { fg = '#89b4fa', bg = '#1e1e2e', style = 'italic' },
  win = { fg = '#181825', bg = '#89b4fa', style = 'italic' },
  tail = { fg = '#89b4fa', bg = '#1e1e2e', style = 'italic' },
}

require('tabby.tabline').set(function(line)
  return {
    {
      { '  ', hl = theme.head },
      line.sep('', theme.head, theme.fill), -- 
    },
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        line.sep('', hl, theme.fill), -- 
        tab.is_current() and '' or '',
        tab.number(),
        tab.name(),
        -- tab.close_btn(''), -- show a close button
        line.sep('', hl, theme.fill), -- 
        hl = hl,
        margin = ' ',
      }
    end),

    line.spacer(),
     -- shows list of windows in tab
     --line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
     --  return {
     --    line.sep('', theme.win, theme.fill),
     --    win.is_current() and '' or '',
     --    win.buf_name(),
     --    line.sep('', theme.win, theme.fill),
     --    hl = theme.win,
     --    margin = ' ',
     --  }
     --end),
    {
      line.sep('', theme.tail, theme.fill), -- 
      { '  ', hl = theme.tail },
    },
    hl = theme.fill,
  }
end)

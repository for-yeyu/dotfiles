-- 跳过愚蠢的 Mac 快捷键，command + ` 需要按两次才能跳转窗口！
-- 注意：需要在 系统设置 > 键盘 > 键盘快捷键 > 键盘 中禁用「将焦点移到下一个窗口」

-- 无限跳动（同 App 窗口循环）
local function cycleAppWindows(step)
  local win = hs.window.focusedWindow()
  if not win then return end

  local app = win:application()
  if not app then return end

  local wins = hs.fnutils.filter(app:allWindows(), function(w)
    return w:isStandard() and w:isVisible()
  end)

  if not wins or #wins <= 1 then return end

  table.sort(wins, function(a, b) return a:id() < b:id() end)

  local currentId = win:id()
  local idx = 1
  for i, w in ipairs(wins) do
    if w:id() == currentId then
      idx = i
      break
    end
  end

  local nextIdx = ((idx - 1 + step) % #wins) + 1
  wins[nextIdx]:focus()
end

-- 下一个窗口：cmd + `
hs.hotkey.bind({ "cmd" }, "`", function()
  cycleAppWindows(1)
end)

-- 往左：cmd + [
hs.hotkey.bind({ "cmd" }, "[", function()
  cycleAppWindows(-1)
end)

-- 往右：cmd + ]
hs.hotkey.bind({ "cmd" }, "]", function()
  cycleAppWindows(1)
end)

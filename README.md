# win2mac

一个基于 AutoHotkey v2 的 Windows 键位映射脚本，用来模拟常用的 macOS 操作习惯。  
A Windows key remapping script based on AutoHotkey v2, designed to mimic common macOS keyboard behavior.

## 当前功能 | Features

- `CapsLock` 切换中英文（发送 `Ctrl + Space`）  
  `CapsLock` toggles input language (sends `Ctrl + Space`)
- `Alt + Shift + 4` 触发截图（发送 `Shift + Win + S`）  
  `Alt + Shift + 4` triggers screenshot (sends `Shift + Win + S`)

## 环境要求 | Requirements

- Windows 10 / 11
- [AutoHotkey v2](https://www.autohotkey.com/)

## 使用方法 | Usage

1. 安装 AutoHotkey v2。  
   Install AutoHotkey v2.
2. 双击运行 `win2mac.ahk`。  
   Double-click `win2mac.ahk` to run.
3. 任务栏托盘出现绿色 `H` 图标即表示脚本已生效。  
   A green `H` icon in the system tray means the script is active.

## 开机自启（可选）| Auto-Start (Optional)

把 `win2mac.ahk` 或其快捷方式放到启动目录：  
Put `win2mac.ahk` or its shortcut into the Startup folder:

```text
%AppData%\Microsoft\Windows\Start Menu\Programs\Startup
```

## 快捷键说明 | Hotkeys

```ahk
SetCapsLockState "AlwaysOff"
CapsLock::Send "^{Space}"
!+4::Send "+#s"
```

## 自定义 | Customization

你可以直接编辑 [win2mac.ahk](./win2mac.ahk) 继续增加映射，例如：  
You can edit [win2mac.ahk](./win2mac.ahk) to add more mappings, for example:

- `^j::Send "{Down}"` 把 `Ctrl + J` 映射为方向键下  
  Map `Ctrl + J` to Arrow Down
- `!h::Send "{Left}"` 把 `Alt + H` 映射为方向键左  
  Map `Alt + H` to Arrow Left

修改后右键托盘图标，点击 `Reload Script` 即可生效。  
After editing, right-click the tray icon and click `Reload Script` to apply changes.

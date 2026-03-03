# win2mac

一个基于 AutoHotkey v2 的 Windows 键位映射脚本，用来在 Windows 上接近 macOS 的按键习惯。  
A Windows key remapping script based on AutoHotkey v2 to approximate macOS-style key behavior.

## 当前功能 | Features

- 全局互换 `Ctrl` 和 `Alt`（左右键都互换）  
  Globally swap `Ctrl` and `Alt` (both left and right keys)
- `CapsLock` 切换中英文（发送 `Ctrl + Space`）  
  `CapsLock` toggles input language (sends `Ctrl + Space`)

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

## 当前脚本 | Current Script

```ahk
#Requires AutoHotkey v2.0
#UseHook

LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt

SetCapsLockState "AlwaysOff"
CapsLock::Send "^{Space}"
```

## 自定义 | Customization

你可以直接编辑 [win2mac.ahk](./win2mac.ahk) 增加映射，修改后右键托盘图标点击 `Reload Script` 生效。  
You can edit [win2mac.ahk](./win2mac.ahk) to add mappings. After editing, right-click the tray icon and click `Reload Script`.

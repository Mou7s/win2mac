#Requires AutoHotkey v2.0
; windows上实现macOS键位设置
#UseHook

; 互换 Ctrl 和 Alt（左右两侧）
LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt

; 使用 CapsLock 切换中英文（发送 Ctrl+Space）
SetCapsLockState "AlwaysOff"
CapsLock::Send "^{Space}"

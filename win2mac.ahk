#Requires AutoHotkey v2.0
; windows上实现macOS键位设置

; 使用 CapsLock 切换中英文（发送 Ctrl+Space）
SetCapsLockState "AlwaysOff"
CapsLock::Send "^{Space}"

; 将截图快捷键从 Shift+Win+S 迁移为 Alt+Shift+4
!+4::Send "+#s"

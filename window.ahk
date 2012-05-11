
; Move Window Left
#Numpad4::
#NumpadLeft::
WinMove, A,,0,0,A_ScreenWidth/2,A_ScreenHeight
return

; Move Window Top
#Numpad8::
#NumpadUp::
WinMove, A,,0,0,A_ScreenWidth,A_ScreenHeight/2
return

; Move Window Right
#Numpad6::
#NumpadRight::
WinMove, A,,0+A_ScreenWidth/2,0,A_ScreenWidth/2,A_ScreenHeight
return

; Move Window Bottom
#Numpad2::
#NumpadDown::
WinMove, A,,0,0+A_ScreenHeight/2,A_ScreenWidth,A_ScreenHeight/2
return

; Move Window TopLeft
#Numpad7::
#NumpadHome::
WinMove, A,,0,0,A_ScreenWidth/2,A_ScreenHeight/2
return

; Move Window TopRight
#Numpad9::
#NumpadPgUp::
WinMove, A,,0+A_ScreenWidth/2,0,A_ScreenWidth/2,A_ScreenHeight/2
return

; Move Window BottomLeft
#Numpad1::
#NumpadEnd::
WinMove, A,,0,0+A_ScreenHeight/2,A_ScreenWidth/2,A_ScreenHeight/2
return

; Move Window BottomRight
#Numpad3::
#NumpadPgDn::
WinMove, A,,0+A_ScreenWidth/2,0+A_ScreenHeight/2,A_ScreenWidth/2,A_ScreenHeight/2
return

; Maximize Window
#Numpad5::
#NumpadClear::
WinRestore, A            ; without this, WinMaximize will not work
WinMaximize, A
return

; Toggle Window Title Bar Display
#Numpad0::
#NumpadIns::
WinSet, Style, ^0xC00000, A  ; Toggle the active window's title bar (WS_CAPTION).
Return

; Toggle Taskbar Hide/Show
#NumpadDot::
#NumpadDel::
If (TaskbarHide := !TaskbarHide)
    WinHide ahk_class Shell_TrayWnd
Else
    WinShow ahk_class Shell_TrayWnd
return

#Up::
WinHide ahk_class Shell_TrayWnd
WinSet, Style, -0xC40000, A
WinMove, A, ,0 ,0 ,1440, 900
return 

#Down::
WinSet, Style, +0xC40000, A
WinShow ahk_class Shell_TrayWnd
return

#j::
#Left::
Send, !{Tab}
Return

#k::
#Right::
Send, !+{Tab}
Return

#9::
SetTitleMatchMode 2
WinActivate, Pentadactyl
Return

#1::
SetTitleMatchMode 2
WinActivate, vi
WinActivate, VIM
WinActivate, zsh
Return

#2::
SetTitleMatchMode 2
WinActivate, org
WinActivate, clj
Return

#4::
SetTitleMatchMode 2
WinActivate Microsoft Outlook
Return

#3::
SetTitleMatchMode 2
WinActivate Sublime
Return

#5::
SetTitleMatchMode 2
WinActivate 对话
Return

#8::
SetTitleMatchMode 2
WinActivate Google Chrome
Return

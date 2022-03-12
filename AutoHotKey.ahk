;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.


SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome

#If WinActive("ahk_class Chrome_WidgetWin_1")
; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

; Reopen closed window
!+t::Send ^+t

; Move to previous tab
!+[::Send ^{PgUp}

; Move to next tab
!+]::Send ^{PgDn}

; Ctrl 1-9

; New window
!n::Send ^n

; Refresh page
!r::Send ^r

!l::Send ^l

; Mapping for idex
$!f::SendInput !{f}
$#f::SendInput !{f}
$#+t::SendInput !+t

; Undo
!+z::SendInput ^{y}
#IfWinActive


; Pycharm or Intellij Idea
#If WinActive("ahk_exe pycharm64.exe") or WinActive("ahk_exe idea64.exe")
; #IfWinActive, ahk_exe pycharm64.exe
; Move to previous tab
!+[::Send !{Left}
; !+[::MsgBox You pressed Alt-Shift-[ while pycharm is active.

; Move to next tab
!+]::Send !{Right}

; Close tab
$^w::SendInput ^{w}
$!w::SendInput ^{F4}

; Global search
!+f::Send ^+{f}

; Format code
#!l::Send ^!{l}

; Comment
!/::Send ^{/}

#If


; -------------------------------
;  Cursor Movement
;
; cmd + arrows - start & end of lines, with shift for selecting text
; -------------------------------
#Left::SendInput {Home}
#Right::SendInput {End}
+#Left::SendInput +{Home}
+#Right::SendInput +{End}
!Left::SendInput ^{Left}
!Right::SendInput ^{Right}
!+Left::SendInput ^+{Left}
!+Right::SendInput ^+{Right}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------


!s::SendInput ^{s}
!a::SendInput ^{a}
!c::SendInput ^{c}
!v::SendInput ^{v}
!x::SendInput ^{x}
!o::SendInput ^{o}
!f::SendInput ^{f}
!z::SendInput ^{z}
!+z::SendInput ^{y}
!y::SendInput ^{y}
!t::SendInput ^{t}
!w::SendInput ^{w}

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
; Lwin & Tab::AltTab

; minimize windows
!m::WinMinimize,a

; delete files
!Backspace::SendInput {Delete}

; Open Search
!Space::SendInput #{q}

; drag_enabled := 0

; +^#F22::
; 	if(drag_enabled)
; 	{
; 		Click up
; 		drag_enabled := 0
; 	}
; 	else
; 	{
; 		drag_enabled := 1
; 		Click down
; 	}
; 	return

; LButton::
; 	if(drag_enabled)
; 	{
; 		Click up
; 		drag_enabled := 0
; 	}
; 	else
; 		click
; 	return

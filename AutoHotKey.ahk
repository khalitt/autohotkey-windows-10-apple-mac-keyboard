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

#InstallKeybdHook
SetTitleMatchMode 2
SendMode Input

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
!y::SendInput ^{y}
!t::SendInput ^{t}
!w::SendInput ^{w}

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
!m::WinMinimize,a

; delete files
!Backspace::SendInput {Delete}

; Open Search
!Space::SendInput #{q}

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

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

#InstallKeybdHook
SetTitleMatchMode 2
SendMode Input

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
!y::SendInput ^{y}
!t::SendInput ^{t}
!w::SendInput ^{w}

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
!m::WinMinimize,a

; delete files
!Backspace::SendInput {Delete}

; Open Search
!Space::SendInput #{q}

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

; --------------------------------------------------------------
; Three finger drag
; --------------------------------------------------------------

drag_enabled := 0

+^#F22::
	if(drag_enabled)
	{
		Click up
		drag_enabled := 0
	}
	else
	{
		drag_enabled := 1
		Click down
	}
	return

LButton::
	if(drag_enabled)
	{
		Click up
		drag_enabled := 0
	}
	else
		click
	return

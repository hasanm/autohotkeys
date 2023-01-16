#SingleInstance force


^9::
WinActivate, ahk_class PuTTY
return

^8::
WinActivate, ahk_class Emacs
return

^7::
WinActivate, ahk_class MozillaWindowClass
return


; WinActivate, ahk_class Xming X rl,,Nyxt 
^5::
WinActivate, ahk_class Xming X rl,,MyOwnBrowser@ubuntu21
return

^4::
WinActivate, ahk_class TfrmMain
return


^3::
global my_emacs
WinActivate, ahk_id %my_emacs%
return

^2::
global my_emacs
WinGet, this_id, ID, A
my_emacs = %this_id%
return

^6::
global window_1
WinActivate, ahk_id %window_1%
return


; ^6::
; WinGet, id, List,,, Program Manager
; Loop, %id%
; {
;     this_id := id%A_Index%
;     WinActivate, ahk_id %this_id%
;     WinGetClass, this_class, ahk_id %this_id%
;     WinGetTitle, this_title, ahk_id %this_id%
;     MsgBox, 4, , Visiting All Windows`n%A_Index% of %id%`nahk_id %this_id%`nahk_class %this_class%`n%this_title%`n`nContinue?
;     IfMsgBox, NO, break
; }
; return

^1::
global window_1
WinGet, this_id, ID, A
window_1 = %this_id%
return

; ^1::
; WinGet, this_id, ID, A
; WinGetClass, this_class, ahk_id %this_id%
; WinGetTitle, this_title, ahk_id %this_id%
; MsgBox,  ID %this_id%`nClass %this_class%`nTitle %this_title%`nHiddenWindows %A_DetectHiddenWindows%
; return


^0::    ; Next window
  WinGetClass, ActiveClass, A
  WinActivateBottom, ahk_class %ActiveClass%
  return


^`::
  Send {Click}
  return


Launch_App2::
  Send {Click}
  return


!PgDn:: ; press control+r to reload
  Msgbox, 4, , Do you really want to reload this script?
  ifMsgBox, Yes
    Reload
  return



!t::
Sleep, 500 ; Delay 500 miliseconds, if you feel its too slow drop it down
SendInput !{TAB} ; ! = Alt key, {TAB} = The tab key, so ALT+TAB (Window switch)
Return
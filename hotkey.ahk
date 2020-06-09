;Allows for the script to be reloaded everytime it's saved
SetTimer,UPDATEDSCRIPT,1000

UPDATEDSCRIPT:
FileGetAttrib,attribs,%A_ScriptFullPath%
IfInString,attribs,A
{
    FileSetAttrib,-A,%A_ScriptFullPath%
    Sleep,500
    Reload
}
Return 


setcapslockstate, alwaysoff
capslock::esc





;LCtrl::LAlt
;RCtrl::ralt

;LWin::Lshift
;appskey::rshift

;LAlt::Lctrl
;RAlt::Rctrl

;*RShift::LWin


; Better and more reliable
;SendMode Input

;LShift::
 ;if ( not GetKeyState("LButton" , "P") )
  ;Click down
;return

;LShift Up::Click up


;; Recommended for performance
;#NoEnv









^!Backspace::Send       {Media_Play_Pause}
^!Left::Send        {Media_Prev}
^!Right::Send       {Media_Next}
^!8::Send  {Volume_Mute}
^!=::Send   {Volume_Up}
^!-::Send   {Volume_Down}

#y::
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)







#.::WinClose, A
#,::WinMinimize, A
; rapid move window
!=::
    Sleep,200 
    Send, {ALTDOWN}{SPACE}{ALTUP}
    Sleep,200 
    Send, M
    Sleep,200 
    Send, {UP}
    Send, {DOWN}
Return



;program maps
^-::
IfWinExist, ahk_exe chrome.exe
    IfWinActive
        WinMinimize
    else
        WinActivate
Return

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





LCtrl::LAlt
RCtrl::ralt

LWin::Lshift
appskey::rshift

LAlt::Lctrl
RAlt::Rctrl

*RShift::LWin





SC110::Send {F10}
SC122::Send {F11}
SC119::Send {F12}

+SC110::Send {Shift down}{F10}{Shift up}
+SC122::Send {Shift down}{F11}{Shift up}
+SC119::Send {Shift down}{F12}{Shift up}



; Recommended for performance
#NoEnv

; Better and more reliable
SendMode Input

LShift::
 if ( not GetKeyState("LButton" , "P") )
  Click down
return

LShift Up::Click up







;~Return::
    ;IfWinActive, ahk_class LyncConversationWindowClass
    ;{
        ;clipBoardBefore := ClipboardAll

        ;Send, ^a
        ;Send, ^c

        ;command := clipboard
        ;FileAppend, %command%, C:\src\commands.txt



         ;clipboard = %clipBoardBefore%
        ;Send, {Return}
    ;}

;return










^SPACE::
    Send, {ALT DOWN}{TAB}{ALT UP}
return

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

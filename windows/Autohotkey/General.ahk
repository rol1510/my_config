#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

;##################################
;#                                #
;# M   M  AA  N  N U  U  AA  L    #
;# MM MM A  A NN N U  U A  A L    #
;# M M M AAAA N NN U  U AAAA L    #
;# M   M A  A N NN U  U A  A L    #
;# M   M A  A N  N  UU  A  A LLLL #
;#                                #
;##################################

^Numpad9::
msg =
(
--------------- Info ---------------
    ^ == Ctrl
    ! == Alt
    + == Shift
    # == WinKey

------------ Hot Keys ------------
    ^Numpad1 || 
      ^NumpadEnd %A_Tab%- Open Chrome
    ^+Numpad1 %A_Tab%- Open Chrome Tab
    ^!Numpad1 %A_Tab%- Open Youtube and Twitch in Browser

    ^Numpad2 %A_Tab%- Open Notepad
    ^!Numpad2 %A_Tab%- Open Notizen.txt in Notepad
    ^+Numpad2 %A_Tab%- Open Todo.todo in VsCode

    ^Numpad3 %A_Tab%- Open Calculator

    ^Numpad4 %A_Tab%- SolidEdge helper sends ^m befor ^s

    ^Numpad5 %A_Tab%- Setup for Autohotkey developing

    ^Numpad6 %A_Tab%- Creates the n^th "Drucken_n" directory,%A_Tab%%A_Tab%%A_Tab%%A_Tab%  ... sometimes

    ^Numpad7 %A_Tab%- TaskTracker hotkey

    ^Numpad9 %A_Tab%- InfoWindow
)

MsgBox, , Roland's Helper Manual, %msg%
return

;###################################
;#                                 #
;#  CCC H  H RRR   OOO  M   M EEEE #
;# C    H  H R  R O   O MM MM E    #
;# C    HHHH RRR  O   O M M M EEE  #
;# C    H  H R R  O   O M   M E    #
;#  CCC H  H R  R  OOO  M   M EEEE #
;#                                 #
;###################################

^Numpad1::
SetTitleMatchMode, 2
if WinExist("ahk_exe chrome.exe") {
WinActivate, "ahk_exe chrome.exe"
PGUP::SendInput, ^t
} else {
Run Chrome
}
return

^!Numpad1::
Run https://www.twitch.tv/directory/following
Run https://www.youtube.com
return

;If shift is pressed, the numpad changes state, so ^NumpadEnd ?? ^+Numpad1
^!NumpadEnd::
Run https://web.whatsapp.com/
return

;If shift is pressed, the numpad changes state, so ^NumpadEnd ?? ^+Numpad1
^NumpadEnd::
Run Chrome
return


;##########################################################
;#                                                        #
;#  AA   CCC  CCC EEEE  SS   SS   OOO  RRR  III EEEE  SS  #
;# A  A C    C    E    S    S    O   O R  R  I  E    S    #
;# AAAA C    C    EEE   SS   SS  O   O RRR   I  EEE   SS  #
;# A  A C    C    E       S    S O   O R R   I  E       S #
;# A  A  CCC  CCC EEEE  SS   SS   OOO  R  R III EEEE  SS  #
;#                                                        #
;##########################################################

^Numpad2::Run Notepad
^!Numpad2::Run C:\Users\Chef\Desktop\Notizen.txt
;Ctrl+Shift+Numpad2
^NumpadDown::Run D:\Autohotkey Scripts\OpenTodoFile.bat

^Numpad3::Run calc.exe

^Numpad5::Run D:\Autohotkey Scripts\SetupForDeveloping.exe
   
^Numpad6::Run D:\Autohotkey Scripts\CreatePrinterFolder.exe

^Numpad7::Run D:\Program Files\TaskTracker\TaskTracker.exe

;##########################################################
;#                                                        #
;#  SS   AA  V   V EEEE     H  H EEEE L    PPP  EEEE RRR  #
;# S    A  A V   V E        H  H E    L    P  P E    R  R #
;#  SS  AAAA  V V  EEE      HHHH EEE  L    PPP  EEE  RRR  #
;#    S A  A  V V  E        H  H E    L    P    E    R R  #
;#  SS  A  A   V   EEEE     H  H EEEE LLLL P    EEEE R  R #
;#                                                        #
;##########################################################

^Numpad4::
doCtrlMBeforCtrlS := !doCtrlMBeforCtrlS
if(doCtrlMBeforCtrlS) {
    MsgBox, "Pressing Ctrl+M befor Ctrl+S in SolidEdge"
} else {
    MsgBox, "Do Nothing"
}
return

~^s::
;MsgBox, "Saving!"
SetTitleMatchMode, 2
if WinActive("ahk_exe Edge.exe") and doCtrlMBeforCtrlS {
    Send, ^m
    Send, ^s
    ; MsgBox, Ctrl+m
} else {
    Send, ^s
    ; MsgBox, only s
}
return






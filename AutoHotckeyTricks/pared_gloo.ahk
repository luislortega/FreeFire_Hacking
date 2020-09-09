#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
f2::suspend
e::
{

send {c down}
sleep 50
send {c up}
sleep 50
send {k down}
sleep 45
send {k up}
sleep 45
send {lbutton down}
sleep 70
send {lbutton up}
sleep 70
}

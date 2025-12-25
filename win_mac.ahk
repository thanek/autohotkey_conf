#Requires AutoHotkey v2.0
#SingleInstance Force

; CMD (Alt) → CTRL (edycja)
!a::Send "^a"
!c::Send "^c"
!v::Send "^v"
!x::Send "^x"
!z::Send "^z"
!y::Send "^y"
!s::Send "^s"
!f::Send "^f"
!l::Send "^l"
!r::Send "^r"
!o::Send "^o"
!n::Send "^n"
!/::Send "^/"

; CMD + H → minimalizuj okno
!h::WinMinimize "A"
!m::WinMinimize "A"

; CMD + SHIFT + V → wklej bez formatowania
+!v::Send "^+v"


; CMD + Backspace → usuń całą linię
!Backspace::Send "{Home}+{End}{Del}"

; CMD + SHIFT + ↑ / ↓ → zaznacz do początku / końca
+!Up::Send "^+{Home}"
+!Down::Send "^+{End}"

; CMD + ↑ / ↓ → początek / koniec dokumentu
!Up::Send "^{Home}"
!Down::Send "^{End}"

; CMD + SHIFT + Backspace → usuń poprzednie słowo
+!Backspace::Send "^+{Left}{Del}"

; CMD + Enter → Enter
!Enter::Send "{Enter}"


; CMD + W → zamknij kartę
!w::Send "^w"

; CMD + Q → zamknij aplikację
!q::Send "!{F4}"

; CMD + ` → okna tej samej aplikacji
!`::Send "^!{Tab}"

; CMD + spacja → Search
!Space::Send "#s"

; CMD + , → Preferencje aplikacji (jak na macOS)
!,::Send "^!s"


; CMD + strzałki → słowa
!Left::Send "^{Left}"
!Right::Send "^{Right}"

; SHIFT + CMD + strzałki → zaznaczanie całych słów (jak na Macu)
+!Left::Send "^+{Left}"
+!Right::Send "^+{Right}"


; =========================
; MC-style w Total Commander
; =========================
global escPressed := false

; Reaguj tylko w Total Commanderze
#HotIf WinActive("ahk_class TTOTAL_CMD")

Esc::{
    global escPressed
    escPressed := true
    Send "{Esc}"
    SetTimer () => escPressed := false, -600
}

3::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F3}" 
    } else {
        Send "3"
    }
}

4::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F4}" 
    } else {
        Send "4"
    }
}

5::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F5}" ; Kopiuj w TC
    } else {
        Send "5"
    }
}

; Esc + 6 = Move (F6)
6::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F6}"
    } else {
        Send "6"
    }
}

7::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F7}"
    } else {
        Send "7"
    }
}

; Esc + 8 = Delete (F8)
8::{
	global escPressed
    if escPressed {
        escPressed := false
        Send "{F8}"
    } else {
        Send "8"
    }
}

#HotIf
; =========================
; MC-style w Total Commander
; =========================


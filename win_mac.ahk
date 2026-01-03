#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook true

; wymuszenie RAlt+L po starcie
; Jednorazowe "odświeżenie" RAlt+L po starcie systemu
SetTimer(WakeL, -1000)  ; uruchom funkcję po 1 sekundzie od startu
WakeL() {
    Send("{RAlt down}{L down}{L up}{RAlt up}")
}

; Lewy CMD (Lewy Alt) → CTRL (edycja)
<!a::Send "^a"
<!b::Send "^b"
<!c::Send "^c"
<!v::Send "^v"
<!x::Send "^x"
<!z::Send "^z"
<!y::Send "^y"
<!s::Send "^s"
<!f::Send "^f"
<!l::Send "^l"
<!r::Send "^r"
<!o::Send "^o"
<!p::Send "^p"
<!n::Send "^n"
<!/::Send "^/"

; Lewy CMD + H → minimalizuj okno
<!h::WinMinimize "A"
<!m::WinMinimize "A"

; Lewy CMD + Lewy SHIFT + V → wklej bez formatowania
+<!v::Send "^+v"

; Lewy CMD + Backspace → usuń całą linię
<!Backspace::Send "{Home}+{End}{Del}"

; Lewy CMD + Lewy SHIFT + ↑ / ↓ → zaznacz do początku / końca
+<!Up::Send "^+{Home}"
+<!Down::Send "^+{End}"

; Lewy CMD + ↑ / ↓ → początek / koniec dokumentu
<!Up::Send "^{Home}"
<!Down::Send "^{End}"

; Lewy CMD + SHIFT + Backspace → usuń poprzednie słowo
+<!Backspace::Send "^+{Left}{Del}"

; Lewy CMD + Enter → Enter
<!Enter::Send "{Enter}"


; Lewy CMD + W → zamknij kartę
<!w::Send "^w"

; Lewy CMD + Q → zamknij aplikację
<!q::Send "!{F4}"

; Lewy CMD + ` → okna tej samej aplikacji
<!`::Send "^!{Tab}"

; Lewy CMD + spacja → Search
~<!Space::Send "#{Space}"
<#Space::Send "{LWin}"

; Lewy CMD + , → Preferencje aplikacji (jak na macOS)
<!,::Send "^!s"


; Lewy CMD + ← / → → początek / koniec wiersza
<!Left::Send "{Home}"
<!Right::Send "{End}"

; Lewy CMD + Lewy Shift + ← / → → zaznacz do początku / końca wiersza
<+<!Left::Send "+{Home}"
<+<!Right::Send "+{End}"

; Lewy Alt + strzałki = Ctrl + strzałki
<#Left::Send "^{Left}"
<#Right::Send "^{Right}"

; Lewy Alt + Lewy Shift + strzałki = Ctrl + Shift + strzałki (zaznaczanie słów)
<#+Left::Send "^+{Left}"
<#+Right::Send "^+{Right}"


; Lewy CMD + Lewy Shift + 4 - screenshot
;
; to robimy w PowerToys -> Menadżer klawiatury -> remapuj skrót -> (Lewy Alt + Lewy Shift + 4) => (Lewy Win + Lewy Shift + S)

; Lewy CMD + Lewy Shift + 3 → cały ekran
+<!3::SendInput "{PrintScreen}"

; Lewy CMD + Lewy Shift + 5 → panel narzędzi (Win 11)
+<!5::Run("SnippingTool.exe /clip")


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


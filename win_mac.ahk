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

; CMD + strzałki → słowa
!Left::Send "^{Left}"
!Right::Send "^{Right}"

; CMD + W → zamknij kartę
!w::Send "^w"

; CMD + Q → zamknij aplikację
!q::Send "!{F4}"

; CMD + ` → okna tej samej aplikacji
!`::Send "^!{Tab}"

; CMD + spacja → Search
!Space::Send "#s"

; CMD + , → Ustawienia
!,::Run "ms-settings:"



; PRZEŁĄCZNIK TRYBU DESKTOP <-> TV
; displaySwitch := A_WinDir "\System32\DisplaySwitch.exe"

; ^!t:: {
;     Run(displaySwitch " /external")
;     Sleep 800
;     Run('"C:\Program Files (x86)\Steam\steam.exe" -bigpicture')
;     Run('c:\tools\nircmdc.exe setdefaultsounddevice "SAMSUNG"')
; }

; ^!d:: {
;     Run(displaySwitch " /internal")
;     Run('c:\tools\nircmdc.exe setdefaultsounddevice "Głośniki"')
; }

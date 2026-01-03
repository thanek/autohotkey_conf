# wymagania
1. AutoHotKeys
2. Windows powertoys (dwa ważne narzędzia:)
  a) keyboard manager
  b) sharpKeys
  
# ustawienia
1. sharpKeys:
dodajemy dwa mapowania:
* Special: Left Alt (00_38) 	=> Special: Left Windows (E0_5B)
* Special: Left Windows (E0_5B) => Special: Left Alt (00_38)

2. powertoys keyboard manager:
dodajemy mapowanie skrótu:
* Alt(Left) + Shift(Left) + 4 	=> Win(Left) + Shift(Left) + S   # odpala screenshot
* opcjonalnie (gdyby polskie znaki nie łapały od razu): Ctrl(Left) + Alt(Right) + A => tekst: "ą"  # czyli tak naprawdę naciskamy prawy ALT i A, powtarzamy dla każdego polskiego znaku diakrytycznego

3. Kompilujemy plik mac_win.ahk do exe i umieszczamy w autostarcie

4. Wyłaczamy snap window:
*  Ustawienia -> System -> Obsługa wielu zadań -> wyłącz funkcję "Przeciągaj okna"
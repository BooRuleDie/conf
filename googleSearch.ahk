#NoEnv
SendMode Input

<^>!s::
Gui, Add, Text, x20 y30 w400 h20 Center, Enter your search query:
Gui, Add, Edit, x20 y60 w400 h25 vsearchQuery Center
Gui, Add, Button, x180 y100 w80 h30 Default gSearchButton, Search
Gui, Show, w440 h160, Search Google
return

SearchButton:
    Gui, Submit
    if searchQuery =
        return
    Run, brave.exe https://www.google.com/search?q=%searchQuery%
    Gui, Destroy
return

Esc::
    Gui, Destroy
return

^!r::
    Reload
return


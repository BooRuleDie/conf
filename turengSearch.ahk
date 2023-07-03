#NoEnv
SendMode Input

<^>!t::
Gui, Add, Text, x20 y30 w400 h20 Center, Enter your search query:
Gui, Add, Edit, x20 y60 w400 h25 vsearchQuery Center
Gui, Add, Button, x180 y100 w80 h30 Default gSearchButton, Search
Gui, Show, w440 h160, Search Tureng
return

SearchButton:
    Gui, Submit
    if searchQuery =
        return
    queryEncoded := URLEncode(searchQuery)
    Run, brave.exe https://tureng.com/en/turkish-english/%queryEncoded%
    Gui, Destroy
return

Esc::
    Gui, Destroy
return

^!r::
    Reload
return

URLEncode(str) {
    ; encode special characters
    str := StrReplace(str, " ", "%20") ; replace space with %20
    
    ; encode non-ASCII characters
    Loop, Parse, str
    {
        char := Asc(A_LoopField)
        if (char > 127) ; non-ASCII character
        {
            hex := Format("{:x}", char)
            encoded := StrReplace(hex, "0x", "%")
            str := StrReplace(str, A_LoopField, encoded)
        }
    }

    return str
}

; Enable CTRL+BACKSPACE to delete whole word
~^BackSpace::
    Send, {Ctrl Down}{Shift Down}{Left}{Shift Up}{Del}{Ctrl Up}
return



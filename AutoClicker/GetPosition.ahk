; Script para obter a posição do mouse e salvar em um arquivo .txt ao pressionar Ctrl + S

; Definir o caminho do arquivo .txt
filePath := "E:\ProjetoBat\Coordenadas.txt"

; Hotkey para Ctrl + S
^s::
    ; Obter a posição do mouse
    CoordMode, Mouse, Screen
    MouseGetPos, x, y

    ; Exibir a posição do mouse em uma mensagem
    ;MsgBox, Posição do Mouse:`nX: %x%`nY: %y%

    ; Salvar as coordenadas no arquivo
    FileAppend, X: %x% Y: %y%`n, %filePath%
return

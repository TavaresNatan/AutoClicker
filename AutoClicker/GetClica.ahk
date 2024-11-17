; Define o intervalo em milissegundos (1000 ms = 1 segundo)
intervalo := 6000

; Define as coordenadas dos cliques
coordenadas := [[757, 76]] ; Adicione suas coordenadas aqui, separadas por vírgula ou colchetes se for mais de uma coordenada

; Variável para o índice do clique atual
indice := 1

; Variável para o conteúdo a ser enviado
textoParaEnviar := "asas" ; Texto padrão, pode ser alterado

CoordMode, Mouse, Screen ; Garante que as coordenadas sejam relativas à tela

; Função para simular um clique do mouse na posição especificada
SimularClique() {
    global coordenadas, indice, intervalo, textoParaEnviar
    ; Verifica se o índice está dentro do limite
    if (indice > coordenadas.MaxIndex()) {
        SetTimer, SimularClique, Off ; Desliga o timer
        return ; Sai da função
    }
    
    x := coordenadas[indice][1] ; Pega o X da coordenada atual
    y := coordenadas[indice][2] ; Pega o Y da coordenada atual
    MouseMove, %x%, %y%, 0 ; Move o mouse para a posição (sem animação)
    Click ; Simula um clique do botão esquerdo do mouse
    
    indice++ ; Avança para a próxima posição
}

; Define um timer para chamar a função a cada intervalo
SetTimer, SimularClique, %intervalo%

; Para o script com ESC
Esc::ExitApp

; Para mudar o conteúdo da variável em tempo de execução
;^s:: ; Ctrl + s para alterar o texto
;    InputBox, novoTexto, Novo Texto, Digite o novo texto a ser enviado:
;    if (ErrorLevel) ; Se o usuário cancelar, não faz nada
;        return
;    textoParaEnviar := novoTexto ; Atualiza a variável
;return


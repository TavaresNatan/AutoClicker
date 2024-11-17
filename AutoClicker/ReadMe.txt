# Guia de Uso - Script AutoHotkey para Automação de Cliques

## Descrição
Este script foi desenvolvido para automatizar cliques do mouse em posições específicas da tela, com funcionalidades para capturar
coordenadas e executar cliques automáticos.

## Funcionalidades Principais

### 1. Captura de Coordenadas
- Abra o script GetPosition com o AutoHotkey
- Pressione `Ctrl + S` para capturar a posição atual do mouse
- As coordenadas serão salvas automaticamente no arquivo "Coordenadas.txt" no diretório E:\ProjetoBat\

### 2. Cliques Automáticos
- Abra o script GetClica com o AutoHotkey
- O script executa cliques automáticos nas coordenadas definidas (abra o arquivo com um editor de texto para alterar as
coordenadas que voce salvou em coordenadas.txt - )
- Intervalo padrão entre cliques: 6 segundos (6000 ms)
- As coordenadas dos cliques podem ser configuradas no array `coordenadas`

## Como Configurar
1. Abra o script em um editor de texto
2. Ajuste o `intervalo` conforme necessário (em milissegundos)
3. Adicione ou modifique as coordenadas no array `coordenadas`
4. Salve as alterações

## Controles
- `ESC`: Encerra o script
- `Ctrl + S`: Captura a posição atual do mouse

## Observações
- O script utiliza coordenadas relativas à tela (Screen)
- As coordenadas são salvas no formato "X: [valor] Y: [valor]"
- É possível adicionar múltiplas coordenadas para cliques sequenciais

## Requisitos
- AutoHotkey instalado no computador - link para download: https://www.autohotkey.com/
- Permissões de escrita no diretório para salvar o arquivo de coordenadas

## Dicas
- Use a função de captura de coordenadas (Ctrl + S) para identificar as posições exatas onde deseja que os cliques ocorram
- Ajuste o intervalo conforme necessário para sua aplicação específica

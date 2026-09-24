#!/bin/bash
# =========================================================================
# ESCOLA SINC - INSTALADOR 1-CLIQUE PARA MACOS (ZERO TERMINAL)
# =========================================================================

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

osascript -e 'display dialog "Olá! Este instalador vai configurar sua Landing Page e o assistente Mestre de Obras no seu Mac automaticamente." with title "Escola SINC - Instalador" buttons {"Começar"} default button "Começar"' >/dev/null 2>&1

# 1. Verifica se o Git está instalado
if ! command -v git &> /dev/null; then
    osascript -e 'display dialog "Precisamos instalar as ferramentas de sistema da Apple. Uma janela vai se abrir; basta clicar em Instalar." with title "Escola SINC" buttons {"Entendido"} default button "Entendido"' >/dev/null 2>&1
    xcode-select --install >/dev/null 2>&1
    exit 0
fi

# 2. Cria pasta de trabalho em Documentos
TARGET_DIR="$HOME/Documents/Minha-Landing-Page"
mkdir -p "$TARGET_DIR"

# Copia os arquivos do template
cp -R "$DIR/../" "$TARGET_DIR/" 2>/dev/null

# 3. Instala a Skill Mestre de Obras
SKILL_DIR="$TARGET_DIR/.agents/skills/sinc-gestor-lp"
mkdir -p "$SKILL_DIR"

if [ -f "$DIR/../../../.agents/skills/sinc-gestor-lp/SKILL.md" ]; then
    cp "$DIR/../../../.agents/skills/sinc-gestor-lp/SKILL.md" "$SKILL_DIR/SKILL.md"
fi

# 4. Mensagem de Sucesso
osascript -e "display dialog \"Tudo pronto! Seus arquivos foram organizados em Documentos > Minha-Landing-Page com o assistente Mestre de Obras instalado.\n\nAgora basta abrir essa pasta no Antigravity e pedir as alterações que desejar!\" with title \"Instalação Concluída!\" buttons {\"Abrir Pasta\"} default button \"Abrir Pasta\"" >/dev/null 2>&1

open "$TARGET_DIR"
exit 0

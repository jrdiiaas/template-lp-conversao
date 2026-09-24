@echo off
chcp 65001 >nul
title Instalador do Aluno - Escola SINC
color 0b

echo =========================================================================
echo       ESCOLA SINC - INSTALADOR 1-CLIQUE DA SUA LANDING PAGE
echo =========================================================================
echo.
echo Olá! Este instalador vai preparar tudo no seu computador automaticamente,
echo sem você precisar saber nenhum comando técnico.
echo.
echo Pressione qualquer tecla para começar...
pause >nul

echo.
echo [1/4] Verificando as ferramentas necessárias...

where git >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo Git não encontrado no seu sistema.
    echo Instalando o Git automaticamente para você...
    winget install --id Git.Git -e --source winget --accept-source-agreements --accept-package-agreements
    if %errorlevel% neq 0 (
        echo.
        echo [AVISO] Não foi possível instalar o Git automaticamente.
        echo Por favor, baixe e instale o Git pelo link: https://git-scm.com/download/win
        echo Depois de instalar, execute este arquivo novamente.
        pause
        exit /b 1
    )
    echo Git instalado com sucesso!
) else (
    echo [OK] Ferramentas de sincronização detectadas!
)

echo.
echo [2/4] Criando sua pasta de trabalho em Documentos...
set "TARGET_DIR=%USERPROFILE%\Documentos\Minha-Landing-Page"

if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)

echo Copiando o modelo da sua página...
xcopy /E /I /Y "%~dp0..\" "%TARGET_DIR%\" >nul 2>&1

echo.
echo [3/4] Instalando a Skill "Mestre de Obras" para o seu Antigravity...
set "SKILL_DIR=%TARGET_DIR%\.agents\skills\sinc-gestor-lp"
mkdir "%SKILL_DIR%" >nul 2>&1
if exist "%~dp0..\..\..\.agents\skills\sinc-gestor-lp\SKILL.md" (
    copy /Y "%~dp0..\..\..\.agents\skills\sinc-gestor-lp\SKILL.md" "%SKILL_DIR%\SKILL.md" >nul 2>&1
) else (
    copy /Y "%~dp0..\SKILL.md" "%SKILL_DIR%\SKILL.md" >nul 2>&1
)

echo.
echo [4/4] Criando atalho na sua Área de Trabalho...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut([System.Environment]::GetFolderPath('Desktop') + '\Meu Site - Antigravity.lnk'); $Shortcut.TargetPath = '%TARGET_DIR%'; $Shortcut.Description = 'Pasta da minha Landing Page - Escola SINC'; $Shortcut.Save()" >nul 2>&1

echo.
echo =========================================================================
echo              PARABÉNS! TUDO FOI PREPARADO COM SUCESSO!
echo =========================================================================
echo.
echo O que você deve fazer agora:
echo 1. Um atalho chamado "Meu Site - Antigravity" foi criado na sua Área de Trabalho.
echo 2. Abra o Antigravity IDE e clique em "Abrir Pasta" selecionando essa pasta.
echo 3. Fale com o seu Mestre de Obras na conversa lateral:
echo    "Mude o título da minha página para [Seu Título] e coloque no ar"
echo.
echo Pressione qualquer tecla para finalizar...
pause >nul

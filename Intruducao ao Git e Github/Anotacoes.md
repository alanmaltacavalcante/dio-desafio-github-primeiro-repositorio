# Introdução ao Git/Github

 - O que é Git e sua importância:

   O Git é um Sistema de Controle de Versão open source, desenvolvido por Linus Torvalds em 2005. Com ele podemos controlar o histórico de alterações de arquivos, utilizado amplamente em projetos de desenvolvimento de software.

- Comandos básicos do terminal Windows e Linux:

  |             Ação             |         Windows         |       Linux        |
  | :--------------------------: | :---------------------: | :----------------: |
  |   Navegar entre diretórios   |           cd            |         cd         |
  | Listar conteúdo do diretório |           dir           |         ls         |
  |       Criar diretório        |          mkdir          |       mkdir        |
  |  Remover/Deletar diretório   | rmdir 'diretório' /S /Q | rm -rf 'diretório' |
  |   Limpar tela do terminal    |           cls           |       clear        |
  |       Voltar diretório       |          cd ..          |       cd ..        |
  |        Autocompletar         |           TAB           |        TAB         |



- Instalando o Git

  - Windows

    :arrow_down: [Download Git 2.37.2 32bits](https://github.com/git-for-windows/git/releases/download/v2.37.2.windows.2/Git-2.37.2.2-32-bit.exe)

    :arrow_down: [Download Git 2.37.2 64bits](https://github.com/git-for-windows/git/releases/download/v2.37.2.windows.2/Git-2.37.2.2-64-bit.exe)

    

    1. Executar o instalador;
    2. Clicar em Next;
    3. Escolher o local de instalação;
    4. Verificar se Git Bash Here e Git GUI here estão marcados. Caso não estejam, marque;
    5. Next e next novamente;
    6. Mantenha ou selecione o Vim como editor de texto padrão;
    7. Selecione Let Git decide;
    8. Next, next e next;
    9. Selecione Checkout Windows-style;
    10. Next, next e next;
    11. Selecione Git Credential Manager;
    12. Next, next e install;

  

  - Linux (Debian/Ubuntu)

    Para instalar a versão mais recente:

    1. No terminal executar o comando `$ sudo add-apt-repository ppa:git-core/ppa`
    2. `$ sudo apt update`
    3. `$ sudo apt install git`
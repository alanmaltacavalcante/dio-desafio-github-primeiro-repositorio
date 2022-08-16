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



- Segurança do Git no Versionamento

  <p> O git utiliza criptografia SHA-1, que é uma função de dispersão criptográfica, projetada pela Agência de Segurança Nacional dos Estados Unidos. A encriptação via SHA-1 gera um conjunto de caracteres identificadores de 40 dígitos. Caso o arquivo sofra modificações, o conjunto de caracteres gerados será diferente. E se voltar o arquivo ao estado anterior, gerará novamente o conjunto correspondente àquele estado. Assim facilita a identificação daquele arquivo e traz segurança.</p>

  <p>Como exemplo, podemos utilizar uma breve linha de comando e gerar um SHA-1 para um determinado arquivo.</p>

> `$ sudo openssl sha1 texto.txt`

- Chave SSH

  Usando o método de autenticação por chave ssh, o acesso se torna mais seguro. Vejamos como criar as chaves ssh e configurar na máquina e no github.

  O procedimento gera duas chaves: uma pública que será configurada no github e a chave privada deve ficar armazenada na sua máquina.

  - Criando as chaves:

    > `ssh-keygen -t ed25519 -c 'e-mail - de preferência o mesmo utilizado no github'`

    Ao pressionar enter, o terminal irá retornar uma mensagem pedindo para indicar o local onde serão salvos os arquivos, caso queira salvar num local diferente do padrão. [Pressione enter para prosseguir]

    A próxima mensagem solicitará que insira uma senha para os arquivos. Insira a senha e pressione enter.

    Pronto! Chaves SSH criadas.

  - Configurando a chave pública no Github:

    Para visualizar o conteúdo da chave privada e copiar para o Github utilize o comando abaixo.

    > `cat /home/user/.ssh/id_ed25519.pub`

    Copie o texto que será exibido no terminal e vá para a sua conta no Github.

    Acesse no menu configurações (settings) > SSH and GPG Keys.

    Clique em <mark style="background-color:#4caf50">New SSH Key </mark>, dê um título/identificação para aquela chave, cole o texto copiado do terminal e clique em <mark style="background-color:#4caf50">Add SSH Key</mark>.

    Insira sua senha quando solicitado e pronto. Configuração da sua chave ssh no github concluída.

  - Configurando a chave privada na máquina:

    1. Primeiro vamos iniciar o ssh agent. No terminal digite o comando:

    > `eval $(ssh-agent -s)`

    Após pressionar enter o terminal vai retornar o pid do processo gerado. O ssh agent já está rodando.

    2. Agora vamos adicionar a nossa chave ao ssh agent. No terminal digite o comando:

    > `ssh-add /home/user/.ssh/id_ed25519`

    Após o ssh-add digite o caminho completo de onde está armazenada a sua chave privada. 

    Digite sua senha e pronto, tudo certo.

    Agora está finalizada a configuração das chaves SSH.

  - 
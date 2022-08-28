# Instalando o Linux :penguin:



Neste curso será utilizada a distribuição Linux Ubuntu.

Para baixar o Ubuntu Server acesse [Download Ubuntu Server]("https://www.ubuntu.com/download/server#downloads") e selecionar a opção de instalação manual.

Para criarmos um ambiente de estudos, vamos trabalhar com máquinas virtuais. O software escolhido para realizar a virtualização do sistema operacional será o VirtualBox.

Para baixar o VirtualBox acesse [Download VirtualBox]("https://www.virtualbox.org").

- #### Evitando incompatibilidade na execução do virtualbox no Windows

  1. Abra o terminal do windows como administrador

  2. Digite o comando:

     > `bcdedit`

  3. Verificar se está aparecendo no final o item <mark>hypervisorlaunchtype</mark>. Se aparecer, verificar se está off. Caso contrário, vamos desabilitá-lo. Entre com o comando:

     > `bcdedit /set hypervisorlaunchtype off`

  4. Se não aparecer, vamos fazer o seguinte procedimento:

     1. Iniciar > painel de controle > programas > adicionar ou remover recursos do windows
     2. Nessa tela marque Plataforma do Hipervisor do Windows. Dê ok e reinicie o computador.
     3. Repedir o passo 3 anterior.

- #### Criando a máquina virtual

  1. Abra o Virtualbox
  2. Clique em novo
  3. Dê um nome para sua máquina virtual
  4. Seleciona a pasta onde o arquivo de disco vai ser armazenado
  5. Selecione o sistema operacional
  6. Selecione a versão do sistema operacional e avance
  7. Selecione a quantidade de memória RAM será alocada para essa máquina virtual. 
  8. Crie um VDI com espaço dinamicamente alocado
  9. Finalize a criação da máquina virtual
  10. Acesse as configurações da máquina virtual
  11. Em rede, selecione o modo bridge
  12. Em armazenamento, carregue a imagem do ubuntu que foi baixada.
  
- Instalando o Linux Ubuntu em MV

  
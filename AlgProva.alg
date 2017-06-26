algoritmo "semnome"
// Função :
// Autor :
// Data : 19/06/2017
// Seção de Declarações 
var
   ponteiro: inteiro

   nome: vetor[1..3] de caracter
   endereco: vetor[1..3] de caracter
   idade: vetor[1..3] de inteiro
   
   nome_ordem: vetor[1..3] de caracter
   endereco_ordem: vetor[1..3] de caracter
   idade_ordem: vetor[1..3] de inteiro
   
   opcao_menu: inteiro
   indicer_registro_edit: inteiro
   i,j: inteiro

   // variaveis criadas agora
   temp_nome, temp_endereco: caracter
   temp_idade: inteiro

inicio
  opcao_menu <- 0
  ponteiro <- 1
  enquanto (opcao_menu <> 9) faca
           escreval("Digite a opção:")
           escreval("1) Inserir registro.")
           escreval("2) Alterar registro.")
           escreval("3) Listar registros em ordem de idade.")
           escreval("9) Sair.")
           leia(opcao_menu)
           
           escolha opcao_menu
             caso 1
                  escreval("Informe o nome:")
                  leia( nome[ponteiro])
                  escreval("Informe o endereço:")
                  leia(endereco[ponteiro])
                  escreval("Informe a idade:")
                  leia(idade[ponteiro])
                  ponteiro <- ponteiro +1
             caso 2
                  escreval("Informe o nr. do registro que deseja excluir:")
                  leia(indice_registro_edit)
                  para i de indice_registro_edit ate 50 faca
                       nome[i] <- nome[i+1]
                       endereco[i] <- nome[i+1]
                       idade[i] <- idade[i+1]
                  fimpara
             caso 3
                  para i de 1 ate 3 faca
                       para j de 1 ate 3 faca
                            se idade[i] < idade[j] entao
                               idade_ordem[j] <- idade[i]
                               nome_ordem[j] <- nome[i]
                               endereco_ordem[j] <- endereco[i]

                               // feito hoje. Diferente da prova
                               temp_nome  <- nome[i]
                               temp_endereco <- endereco[i]
                               temp_idade <-  idade[i]
                               idade[i] <- idade[j]
                               nome[i] <- nome[j]
                               endereco[i] <- endereco[j]
                               
                               nome[j] <- temp_nome
                               endereco[j] <- temp_endereco
                               idade[j] <- temp_idade

                            fimse
                       fimpara
                  fimpara
                  para i de 1 ate 3 faca
                       //escreval("Nome:"+nome_ordem[i])
                       //escreval(endereco_ordem[i])
                       //escreval(idade_ordem[i])
                       escreva("Nome:"+nome[i]+" ")
                       escreval(idade[i])

                  fimpara
           fimescolha
  fimenquanto
  
fimalgoritmo

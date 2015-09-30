algoritmo "jogo-da-velha"

// Nesse bloco aqui são declarada as variáveis para gravar dados.
var
JOGO: VETOR[1..10,1..10] DE CARACTER // declaração de vetor de 10 posições para o jogo
VENCEDOR: LOGICO // variavel para a identificar o vencedor do jogo
opt,en:caracter // 'opt' para ler a coordenada e 'en' para apertar enter quando alguém ganhar
CONT_JOGADAS,i,j,k,cont1,cont2: INTEIRO //'CONT_JOGADAS' para contar quantas jogadas foram, i,j,k são contadores, cont1 e cont2 as vitórias
JOGADOR: VETOR[1..2] DE CARACTER //são as varieves de cadastrar os jogadores

//Aqui é o procedimento para mostrar o jogo na tela são os chamados vetores
procedimento Mostra_jogo()
inicio
escreval(" ------------------------------------")// placar do jogo que pode mudar no final
escreval("|######### Placar parcial ###########")
escreval("|",Jogador[1], " = ",cont1)
escreval("|",Jogador[2], " = ",cont2)
escreval(" ------------------------------------")
escreval("------------------")
escreval("|   A | B | C    |")
ESCREVAL("|1  ",JOGO[1,1]," | ", JOGO[1,2]," | ", JOGO[1,3], "    |")       //são os vetores do jogo
ESCREVAL("|  ---|---|---   |")
ESCREVAL("|2  ",JOGO[2,1]," | ", JOGO[2,2]," | ", JOGO[2,3], "    |")
ESCREVAL("|  ---|---|---   |")
ESCREVAL("|3  ",JOGO[3,1]," | ", JOGO[3,2]," | ", JOGO[3,3], "    |")
ESCREVAL("|                |")
escreval("------------------")
fimprocedimento

// Aqui mostra como é o  procedimento de cadastro de jogardor
PROCEDIMENTO CADASTRO()
INICIO
PARA i DE 1 ATE 2 FACA
   ESCREVAL("Informe o nome do ",i,"º jogador")
   leia(jogador[i])
   limpatela
fimpara
FIMPROCEDIMENTO

inicio                                 // Aqui começa o código do jogo
CADASTRO()
repita                       //inicializa variaveis
   VENCEDOR <- FALSO
   CONT_JOGADAS <- 0
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         JOGO[i,j] <- " "    // inicializa vetor com espaços
      fimpara
   fimpara
   k <- 1
   REPITA
   // Aparece o jogo na tela
      Mostra_jogo()
      escreval(JOGADOR[k]," informe a cordenada de sua jogada")
      leia(opt)
      limpatela
      // Seção de verificação de jogada
      se opt = "a1" entao
         i<-1
         j<-1
      fimse
      se opt = "b1" entao
         i<-1
         j<-2
      fimse
      se opt = "c1" entao
         i<-1
         j<-3
      fimse
      se opt = "a2" entao
         i<-2
         j<-1
      fimse
      se opt = "b2" entao
         i<-2
         j<-2
      fimse
      se opt = "c2" entao
         i<-2
         j<-3
      fimse
      se opt = "a3" entao
         i<-3
         j<-1
      fimse
      se opt = "b3" entao
         i<-3
         j<-2
      fimse
      se opt = "c3" entao
         i<-3
         j<-3
      fimse
      // verifica se o lugar já está sendo usado ou não existe
      se (JOGO[i,j]) <> " " entao
         escreval("Este lugar ja está sendo usado ou jogada indisponível Tente novamente")
         escreval("Aperte enter para continuar")
         leia(en)
      senao
      // marca o lugar no jogo
         se k = 1 entao
            CONT_JOGADAS <- CONT_JOGADAS+1
            k <- k+1
            JOGO[i,j] <- "X"
         senao
            CONT_JOGADAS <- CONT_JOGADAS+1
            k <- 1
            JOGO[i,j] <- "O"
         FIMSE
      fimse
      //verifica se quantidades de jogadas são maiores que 5 para verificar vencedor
      se CONT_JOGADAS >= 5 ENTAO
      //verifica vencedor
         SE (JOGO[1,1] = JOGO[2,2]) E (JOGO[2,2] = JOGO[3,3]) ENTAO
            se JOGO[1,1] = "X" ENTAO
               VENCEDOR <- VERDADEIRO
               Mostra_jogo()
               ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
               escreval("Aperte enter para continuar")
               leia(en)
               cont1<- cont1+1
            senao
               SE JOGO[1,1] = "O" ENTAO
                  VENCEDOR <- VERDADEIRO
                  Mostra_jogo()
                  ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                  escreval("Aperte enter para continuar")
                  leia(en)
                  cont2<- cont2+1
               FIMSE
            fimse
         SENAO
            se (JOGO[1,3] = JOGO[2,2]) E (JOGO[2,2] = JOGO[3,1]) ENTAO
               se JOGO[1,3] = "X" ENTAO
                  VENCEDOR <- VERDADEIRO
                  Mostra_jogo()
                  ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                  escreval("Aperte enter para continuar")
                  leia(en)
                  cont1<- cont1+1
               senao
                  se (JOGO[1,3]="O") entao
                     VENCEDOR <- VERDADEIRO
                     Mostra_jogo()
                     ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                     escreval("Aperte enter para continuar")
                     leia(en)
                     cont2<- cont2+1
                  FIMSE
               fimse
            SENAO
               se (JOGO[1,1] = JOGO[1,2]) E (JOGO[1,2] = JOGO[1,3]) ENTAO
                  se JOGO[1,1] = "X" ENTAO
                     VENCEDOR <- VERDADEIRO
                     Mostra_jogo()
                     ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                     escreval("Aperte enter para continuar")
                     leia(en)
                     cont1<- cont1+1
                  senao
                     se (JOGO[1,1]="O") entao
                        VENCEDOR <- VERDADEIRO
                        Mostra_jogo()
                        ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                        escreval("Aperte enter para continuar")
                        leia(en)
                        cont2<- cont2+1
                     FIMSE
                  fimse
               senao
                  se (JOGO[2,1] = JOGO[2,2]) E (JOGO[2,2] = JOGO[2,3]) ENTAO
                     se JOGO[2,1] = "X" ENTAO
                        VENCEDOR <- VERDADEIRO
                        Mostra_jogo()
                        ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                        escreval("Aperte enter para continuar")
                        leia(en)
                        cont1<- cont1+1
                     senao
                        se (JOGO[2,1]="O") entao
                           VENCEDOR <- VERDADEIRO
                           Mostra_jogo()
                           ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                           escreval("Aperte enter para continuar")
                           leia(en)
                           cont2<- cont2+1
                        FIMSE
                     fimse
                  senao
                     se (JOGO[3,1] = JOGO[3,2]) E (JOGO[3,2] = JOGO[3,3]) ENTAO
                        se JOGO[3,1] = "X" ENTAO
                           VENCEDOR <- VERDADEIRO
                           Mostra_jogo()
                           ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                           escreval("Aperte enter para continuar")
                           leia(en)
                           cont1<- cont1+1
                        senao
                           se (JOGO[3,1]="O") entao
                              VENCEDOR <- VERDADEIRO
                              Mostra_jogo()
                              ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                              escreval("Aperte enter para continuar")
                              leia(en)
                              cont2<- cont2+1
                           FIMSE
                        fimse
                     senao
                        se (JOGO[1,1] = JOGO[2,1]) E (JOGO[2,1] = JOGO[3,1]) ENTAO
                           se JOGO[1,1] = "X" ENTAO
                              VENCEDOR <- VERDADEIRO
                              Mostra_jogo()
                              ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                              escreval("Aperte enter para continuar")
                              leia(en)
                              cont1<- cont1+1
                           senao
                              se (JOGO[1,1]="O") entao
                                 VENCEDOR <- VERDADEIRO
                                 Mostra_jogo()
                                 ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                                 escreval("Aperte enter para continuar")
                                 leia(en)
                                 cont2<- cont2+1
                              FIMSE
                           fimse
                        SENAO
                           se (JOGO[1,2] = JOGO[2,2]) E (JOGO[2,2] = JOGO[3,2]) ENTAO
                              se JOGO[1,2] = "X" ENTAO
                                 VENCEDOR <- VERDADEIRO
                                 Mostra_jogo()
                                 ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                                 escreval("Aperte enter para continuar")
                                 leia(en)
                                 cont1<- cont1+1
                              senao
                                 se (JOGO[1,2]="O") entao
                                    VENCEDOR <- VERDADEIRO
                                    Mostra_jogo()
                                    ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                                    escreval("Aperte enter para continuar")
                                    leia(en)
                                    cont2<- cont2+1
                                 FIMSE
                              fimse
                           SENAO
                              se (JOGO[1,3] = JOGO[2,3]) E (JOGO[2,3] = JOGO[3,3]) ENTAO
                                 se JOGO[1,3] = "X" ENTAO
                                    VENCEDOR <- VERDADEIRO
                                    Mostra_jogo()
                                    ESCREVAL(jogador[1]," Você venceu!!!!!!!!! Parabéns")
                                    escreval("Aperte enter para continuar")
                                    leia(en)
                                    cont1<- cont1+1
                                 senao
                                    se (JOGO[1,3]="O") entao
                                       VENCEDOR <- VERDADEIRO
                                       Mostra_jogo()
                                       ESCREVAL(jogador[2]," Você venceu!!!!!!!!! Parabéns")
                                       escreval("Aperte enter para continuar")
                                       leia(en)
                                       cont2<- cont2+1
                                    FIMSE
                                 fimse
                              senao
                                 se CONT_JOGADAS=9 ENTAO
                                    Mostra_jogo()
                                    ESCREVAL("Que pena deu velhaaaa")
                                    escreval("Aperte enter para continuar")
                                    leia(en)
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      limpatela
      //verifica se o jogo termina
   ATE (CONT_JOGADAS = 9) OU (VENCEDOR = VERDADEIRO)
   escreval(" ------------------------------------")
   escreval("|######### Placar Final ##########")  // placar do final do jogo
   escreval("|",Jogador[1] ," = ",cont1)
   escreval("|",Jogador[2], " = ",cont2)
   escreval(" ---------------------------------")
   // perguanta se quer jogr de novo
   escreval("Desejas jogar de novo s/n")
   leia(EN)
   limpatela
ate en="n"
fimalgoritmo

Algoritmo "P1_ALGORITMO"
Var
   nome: vetor[1..3] de caractere
   telefone: vetor[1..3] de inteiro
   formapgto: vetor[1..3] de inteiro
   itens: vetor[1..3] de caractere
   preco: vetor[1..3] de real
   qtd: vetor[1..3] de inteiro
   estoque: vetor[1..3] de inteiro
   total: vetor[1..3] de real
   case, compra, i, j: inteiro
   desconto: real
Inicio
   //muito importante esse passo, crucial para o codigo rodar(me salvou inclusive)
   j<-0
   //setando produtos
   itens[1]<- "T�nis jordan"
   itens[2]<- "Polo lacoste"
   itens[3]<- "Bermuda"
   preco[1]<- 700
   preco[2]<- 5000
   preco[3]<- 500
   estoque[1]<- 100
   estoque[2]<- 100
   estoque[3]<- 100

   //criando menu
   //tem repita, para o menu ser iterativo
   repita
      escreval("Ol� bem vindo a loja duo sports")
      escreval("Navegue pelo nosso menu")
      escreval()
      escreval("1- ver itens disponiveis da loja")
      escreval("2- Realizar compra")
      escreval("3- Regitro da compra")
      escreval("0- sair do programa")
      leia(case)
      //fazendo mostrar o estoque
      se (case = 1) entao
         limpatela()
         escreval("Veja itens disponiveis da loja")
         para i de 1 ate 3 faca
            escreval( "produto: ", itens[i] )
            escreval( "Pre�o R$: ", preco[i] )
            escreval( "estoque: ", estoque[i] )
            escreval()
         fimpara
      fimse
      //indo para cadastro/compra
      se (case = 2) entao
         limpatela()
         j<- j+1
         escreval("Digite seu nome: ")
         leia(nome[j])
         escreval("Digite seu numero: ")
         leia(telefone[j])
         escreval("selecione a forma de pagamento por favor: ")
         escreval("1-PIX")
         escreval("2- Dinheiro")
         leia(formapgto[j])
         limpatela()
         //aqui, dei um la�o, para o usuario nao fazerr cagada e tentar zuar
         repita
            limpatela()
            escreval("Muito bem sr: ",nome[j]," digite o codigo que deseja")
            escreval( " 1- produto: ", itens[1] )
            escreval( "R$: ", preco[1] )
            escreval( " estoque do produto: ", estoque[1])
            escreval()
            escreval( " 2- produto: ", itens[2] )
            escreval( "R$: ", preco[2] )
            escreval( " estoque do produto: ", estoque[2])
            escreval()
            escreval( " 3- produto: ", itens[3] )
            escreval( "R$: ", preco[3] )
            escreval( " estoque do produto: ", estoque[3])
            leia(compra)
         ate(compra = 1) ou (compra = 2) ou (compra = 3)
         //sequencia de SEs para entender o numero do pedido e o total da compra
         se (compra = 1) entao
            escreval("certo, quantas unidades deseja?: ")
            //aqui, joguei um repita, mesma fita, proibir usuario de errar
            repita
               leia(qtd[j])
               se (qtd[j] > estoque[1]) entao
                  escreval("Paia�o, n�o tem produto suficiente no estoque.")
               fimse
            ate(qtd[j] > 0) e (qtd[j] < estoque[1])
            estoque[1] <- estoque[1] - qtd[j]
            total[j] <- preco[1] * qtd[j]
            escreval("Boa escolha, o pre�o deu: ",total[j])
            se (formapgto[j] = 2) entao
               desconto<- total[j] * 0.10
               total[j]<- total[j] - desconto
               limpatela()
               escreval("total com desconto deu: ", total[j])
            fimse
         fimse
         //mesmo procedimento, um se caso o codigo do produto for diferente
         se (compra = 2) entao
            escreval("certo, quantas unidades deseja?: ")
            repita
               leia(qtd[j])
               se (qtd[j] > estoque[2]) entao
                  escreval("Paia�o, n�o tem produto suficiente no estoque.")
               fimse
            ate(qtd[j] > 0) e (qtd[j] < estoque[2])
            estoque[2] <- estoque[2] - qtd[j]
            total[j] <- preco[2] * qtd[j]
            escreval("Boa escolha, o pre�o deu: ",total[j])
            se (formapgto[j] = 2) entao
               desconto<- total[j] * 0.10
               total[j]<- total[j] - desconto
               limpatela()
               escreval("total com desconto deu: ", total[j])
            fimse
         fimse
         //idem aqui
         se (compra = 3) entao
            escreval("certo, quantas unidades deseja?: ")
            repita
               leia(qtd[j])
               se (qtd[j] > estoque[3]) entao
                  escreval("Paia�o, n�o tem produto suficiente no estoque.")
               fimse
            ate(qtd[j] > 0) e (qtd[j] < estoque[3])
            estoque[3] <- estoque[3] - qtd[j]
            total[j] <- preco[3] * qtd[j]
            escreval("Boa escolha, o pre�o deu: ",total[j])
            se (formapgto[j] = 2) entao
               desconto<- total[j] * 0.10
               total[j]<- total[j] - desconto
               limpatela()
               escreval("total com desconto deu: ", total[j])
            fimse
         fimse
         //dar uma espa�ada
         escreval()
      fimse
      //ultimo menu
      //mostro todos que entraram no site, fizeram a compra
      se (case = 3) entao
         limpatela()
         escreval("Veja aqui um relatorio de compras")
         para j de 1 ate j faca
            escreval("cliente: ", nome[j])
            escreval("telefone: ", telefone[j])
            escreval("forma de pagamento: ", formapgto[j])
            escreval("codigo de produto: ", compra)
            escreval("quantidade do produto: ", qtd[j])
            escreval("valor total da compra: ", total[j])
            escreval()
         fimpara
      fimse
   ate (case = 0)
   escreval("Obrigado pela preferencia")
   //VAI S�O PAULO
Fimalgoritmo
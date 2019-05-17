#!/bin/bash
#Autor: Fabricio Bojikian
#Data: 07/02/2019
#Nome: Jogo da velha sem AI

menu (){

 clear
 echo -e " \033[40;1;37m                             \033[0m "
 echo -e " \033[40;1;37m       JOGO DA VELHA         \033[0m "
 echo -e " \033[40;1;37m     Fabricio Bojikian       \033[0m "
 echo -e " \033[40;1;37m                             \033[0m "
 echo 
 echo -e " \033[5;37m Pressione ENTER para continuar... \033[0m "
  read tecla
   
  linha11=__
  linha12=__
  linha13=__
  linha21=__
  linha22=__
  linha23=__
  linha31="  "
  linha32="  "
  linha33="  "
  flag=0
   dados
}

dados(){

 clear
  echo " Digite o nome do primeiro jogador: "
   read nome1

  echo " Digite o nome do segudo jogador: "
   read nome2
    game
}

game (){

 clear
  echo " Digite a linha e a coluna (Ex. 11)... "
  echo -e " \033[47;1;30m                 \033[0m"
  echo -e " \033[47;1;30m     1   2   3   \033[0m"
  echo -e " \033[47;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[47;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[47;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[47;1;30m                 \033[0m"

#CONDIÇOES PARA GANHAR:

  if [[ "$linha11" = "X_" && "$linha12" = "X_" && "$linha13" = "X_" ]]
   then
    fim1

  elif [[ "$linha21" = "X_" && "$linha22" = "X_" && "$linha23" = "X_" ]]
   then
    fim1

  elif [[ "$linha31" = "X " && "$linha32" = "X " && "$linha33" = "X " ]]
   then
    fim1

  elif [[ "$linha11" = "X_" && "$linha21" = "X_" && "$linha31" = "X " ]]
   then
    fim1

  elif [[ "$linha12" = "X_" && "$linha22" = "X_" && "$linha32" = "X " ]]
   then
    fim1

  elif [[ "$linha13" = "X_" && "$linha23" = "X_" && "$linha33" = "X " ]]
   then
    fim1

  elif [[ "$linha11" = "X_" && "$linha22" = "X_" && "$linha33" = "X " ]]
   then
    fim1

  elif [[ "$linha31" = "X " && "$linha22" = "X_" && "$linha13" = "X_" ]]
   then
    fim1

  elif [[ "$linha11" = "O_" && "$linha12" = "O_" && "$linha13" = "O_" ]]
   then
    fim2

  elif [[ "$linha21" = "O_" && "$linha22" = "O_" && "$linha23" = "O_" ]]
   then
    fim2

  elif [[ "$linha31" = "O " && "$linha32" = "O " && "$linha33" = "O " ]]
   then
    fim2

  elif [[ "$linha11" = "O_" && "$linha21" = "O_" && "$linha31" = "O " ]]
   then
    fim2

  elif [[ "$linha12" = "O_" && "$linha22" = "O_" && "$linha32" = "O " ]]
   then
    fim2

  elif [[ "$linha13" = "O_" && "$linha23" = "O_" && "$linha33" = "O " ]]
   then
    fim2

  elif [[ "$linha11" = "O_" && "$linha22" = "O_" && "$linha33" = "O " ]]
   then
    fim2

  elif [[ "$linha31" = "O " && "$linha22" = "O_" && "$linha13" = "O_" ]]
   then
    fim2

  elif [[ "$linha11" != "__" && "$linha12" != "__" && "$linha13" != "__" && "$linha21" != "__" && "$linha22" != "__" && "$linha23" != "__" && "$linha31" != "  " && "$linha32" != "  " && "$linha33" != "  " ]]
   then
    fim3

#DETERMINAR A VEZ DO JOGADOR:

  elif [ "$flag" -eq 0 ]
   then
    echo " Vez de $nome1: "   
     flag=1
      jogador1

  elif [ "$flag" -eq 1 ]
   then
    echo " Vez de $nome2: "   
     flag=0
      jogador2
       fi
}

jogador1(){

   read escolha1

    if [[ "$escolha1" -ne "11" && "$escolha1" -ne "12" && "$escolha1" -ne "13" && "$escolha1" -ne "21" && "$escolha1" -ne "22" && "$escolha1" -ne "23" && "$escolha1" -ne "31" && "$escolha1" -ne "32" && "$escolha1" -ne "33" ]]
     then
      echo "Comando errado!"
       jogador1

    elif [ "$escolha1" = "11" ]
     then
      if [ "$linha11" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha11=$"X_"
          game
           fi

    elif [ "$escolha1" = "12" ]
     then
      if [ "$linha12" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha12=$"X_"
          game
           fi

    elif [ "$escolha1" = "13" ]
     then
      if [ "$linha13" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha13=$"X_"
          game
           fi

    elif [ "$escolha1" = "21" ]
     then
      if [ "$linha21" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha21=$"X_"
          game
           fi

    elif [ "$escolha1" = "22" ]
     then
      if [ "$linha22" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha22=$"X_"
          game
           fi

    elif [ "$escolha1" = "23" ]
     then
      if [ "$linha23" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha23=$"X_"
          game
           fi

    elif [ "$escolha1" = "31" ]
     then
      if [ "$linha31" = "O " ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha31=$"X "
          game
           fi

    elif [ "$escolha1" = "32" ]
     then
      if [ "$linha32" = "O " ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha32=$"X "
          game
           fi

    elif [ "$escolha1" = "33" ]
     then
      if [ "$linha33" = "O " ]
       then
        echo "Casa ocupada!"
         jogador1
        else
         linha33=$"X "
          game
           fi

    else
     echo "Opção Inválida!"
      game
       fi
}

jogador2(){

   read escolha2

    if [[ "$escolha2" -ne "11" && "$escolha2" -ne "12" && "$escolha2" -ne "13" && "$escolha2" -ne "21" && "$escolha2" -ne "22" && "$escolha2" -ne "23" && "$escolha2" -ne "31" && "$escolha2" -ne "32" && "$escolha2" -ne "33" ]]
     then
      echo "Comando errado!"
       jogador2

    elif [ "$escolha2" = "11" ]
     then
      if [ "$linha11" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha11=$"O_"
          game
           fi

    elif [ "$escolha2" = "12" ]
     then
      if [ "$linha12" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha12=$"O_"
          game
           fi

    elif [ "$escolha2" = "13" ]
     then
      if [ "$linha13" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha13=$"O_"
          game
           fi

    elif [ "$escolha2" = "21" ]
     then
      if [ "$linha21" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha21=$"O_"
          game
           fi

    elif [ "$escolha2" = "22" ]
     then
      if [ "$linha22" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha22=$"O_"
          game
           fi

    elif [ "$escolha2" = "23" ]
     then
      if [ "$linha23" = "X_" ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha23=$"O_"
          game
           fi

    elif [ "$escolha2" = "31" ]
     then
      if [ "$linha31" = "X " ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha31=$"O "
          game
           fi

    elif [ "$escolha2" = "32" ]
     then
      if [ "$linha32" = "X " ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha32=$"O "
          game
           fi

    elif [ "$escolha2" = "33" ]
     then
      if [ "$linha33" = "X " ]
       then
        echo "Casa ocupada!"
         jogador2
        else
         linha33=$"O "
          game
           fi

    else
     echo "Opção Inválida!"
      game
       fi
}

#FINAL DO JOGO:

fim1(){

 clear
  echo " Digite a linha e a coluna (Ex. 11)... "
  echo -e " \033[42;1;30m                 \033[0m"
  echo -e " \033[42;1;30m     1   2   3   \033[0m"
  echo -e " \033[42;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[42;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[42;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[42;1;30m                 \033[0m" 
  echo " $nome1 GANHOU A PARTIDA! "

  echo 
  echo ----------------------------------
  echo 

  echo -e " \033[40;1;37m                              \033[0m "
  echo -e " \033[40;1;37m  O que deseja fazer agora?   \033[0m "
  echo -e " \033[40;1;37m  < r > Reiniciar jogo        \033[0m "
  echo -e " \033[40;1;37m  < m > Menu Principal        \033[0m "
  echo -e " \033[40;1;37m  < s > Sair                  \033[0m " 
  echo -e " \033[40;1;37m                              \033[0m "
   read op

    if [ "$op" = "r" ]
     then
      linha11=__
      linha12=__
      linha13=__
      linha21=__
      linha22=__
      linha23=__
      linha31="  "
      linha32="  "
      linha33="  "
      flag=0
       game

    elif [ "$op" = "m" ]
     then
      menu

    elif [ "$op" = "s" ]
     then
      clear
       exit

    else
     echo "Opção Inválida!"
      fim1
       fi
}

fim2(){

 clear
  echo " Digite a linha e a coluna (Ex. 11)... "
  echo -e " \033[42;1;30m                 \033[0m"
  echo -e " \033[42;1;30m     1   2   3   \033[0m"
  echo -e " \033[42;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[42;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[42;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[42;1;30m                 \033[0m" 
  echo " $nome2 GANHOU A PARTIDA! "

  echo 
  echo ----------------------------------
  echo 

  echo -e " \033[40;1;37m                              \033[0m "
  echo -e " \033[40;1;37m  O que deseja fazer agora?   \033[0m "
  echo -e " \033[40;1;37m  < r > Reiniciar jogo        \033[0m "
  echo -e " \033[40;1;37m  < m > Menu Principal        \033[0m "
  echo -e " \033[40;1;37m  < s > Sair                  \033[0m " 
  echo -e " \033[40;1;37m                              \033[0m "
   read op

    if [ "$op" = "r" ]
     then
      linha11=__
      linha12=__
      linha13=__
      linha21=__
      linha22=__
      linha23=__
      linha31="  "
      linha32="  "
      linha33="  "
      flag=0
       game

    elif [ "$op" = "m" ]
     then
      menu

    elif [ "$op" = "s" ]
     then
      clear
       exit

    else
     echo "Opção Inválida!"
      fim2
       fi
}

fim3(){

 clear
  echo " Digite a linha e a coluna (Ex. 11)... "
  echo -e " \033[41;1;30m                 \033[0m"
  echo -e " \033[41;1;30m     1   2   3   \033[0m"
  echo -e " \033[41;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[41;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[41;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[41;1;30m                 \033[0m" 
  echo " DEU VELHA! "

  echo 
  echo ----------------------------------
  echo 

  echo -e " \033[40;1;37m                              \033[0m "
  echo -e " \033[40;1;37m  O que deseja fazer agora?   \033[0m "
  echo -e " \033[40;1;37m  < r > Reiniciar jogo        \033[0m "
  echo -e " \033[40;1;37m  < m > Menu Principal        \033[0m "
  echo -e " \033[40;1;37m  < s > Sair                  \033[0m " 
  echo -e " \033[40;1;37m                              \033[0m "
   read op

    if [ "$op" = "r" ]
     then
      linha11=__
      linha12=__
      linha13=__
      linha21=__
      linha22=__
      linha23=__
      linha31="  "
      linha32="  "
      linha33="  "
      flag=0
       game

    elif [ "$op" = "m" ]
     then
      menu

    elif [ "$op" = "s" ]
     then
      clear
       exit

    else
     echo "Opção Inválida!"
      fim3
       fi
}

menu

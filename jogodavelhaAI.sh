#!/bin/bash
#Autor: Fabricio Bojikian
#Data: 07/02/2019
#Nome: Jogo da velha com AI

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
  flag11=0
  flag12=0
  flag13=0
  flag21=0
  flag22=0
  flag23=0
  flag31=0
  flag32=0
  flag33=0
  flag2=0
  flag=0
  var=0
   dados
}

dados(){

 clear
  echo " Digite o seu nome: "
   read nome
    echo " Nivel da dificuldade: (Digite: facil, medio ou dificil) "
     read nivel

 if [ $nivel = "facil" ]
  then game

 elif [ $nivel = "medio" ]
  then game

 elif [ $nivel = "dificil" ]
  then 
   flag=1
    game

  else
   echo "Comando errado!"
    sleep 2
     dados
      fi
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

#Verificar BUGS:

 if [[ "$var" = "11" && "$linha11" != "O_" && "$linha11" != "X_" ]]
  then
   linha11=$"O_"
    flag11="11"
     var=0
      game

 elif [[ "$var" = "12" && "$linha12" != "O_" && "$linha12" != "X_" ]]
  then
   linha12=$"O_"
    flag12="12"
     var=0
      game

 elif [[ "$var" = "13" && "$linha13" != "O_" && "$linha13" != "X_" ]]
  then
   linha13=$"O_"
    flag13="13"
     var=0
      game

 elif [[ "$var" = "21" && "$linha21" != "O_" && "$linha21" != "X_" ]]
  then
   linha21=$"O_"
    flag21="21"
     var=0
      game

 elif [[ "$var" = "22" && "$linha22" != "O_" && "$linha22" != "X_" ]]
  then
   linha22=$"O_"
    flag22="22"
     var=0
      game

 elif [[ "$var" = "23" && "$linha23" != "O_" && "$linha23" != "X_" ]]
  then
   linha23=$"O_"
    flag23="23"
     var=0
      game

 elif [[ "$var" = "31" && "$linha31" != "O " && "$linha31" != "X " ]]
  then
   linha31=$"O "
    flag31="31"
     var=0
      game

 elif [[ "$var" = "32" && "$linha32" != "O " && "$linha32" != "X " ]]
  then
   linha32=$"O "
    flag32="32"
     var=0
      game

 elif [[ "$var" = "33" && "$linha33" != "O " && "$linha33" != "X " ]]
  then
   linha33=$"O "
    flag33="33"
     var=0
      game

#CONDIÇOES PARA GANHAR:

  elif [[ "$linha11" = "X_" && "$linha12" = "X_" && "$linha13" = "X_" ]]
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
    var=0
     fim2

  elif [[ "$linha21" = "O_" && "$linha22" = "O_" && "$linha23" = "O_" ]]
   then
    var=0
     fim2

  elif [[ "$linha31" = "O " && "$linha32" = "O " && "$linha33" = "O " ]]
   then
    var=0
     fim2

  elif [[ "$linha11" = "O_" && "$linha21" = "O_" && "$linha31" = "O " ]]
   then
    var=0
     fim2

  elif [[ "$linha12" = "O_" && "$linha22" = "O_" && "$linha32" = "O " ]]
   then
    var=0
     fim2

  elif [[ "$linha13" = "O_" && "$linha23" = "O_" && "$linha33" = "O " ]]
   then
    var=0
     fim2

  elif [[ "$linha11" = "O_" && "$linha22" = "O_" && "$linha33" = "O " ]]
   then
    var=0
     fim2

  elif [[ "$linha31" = "O " && "$linha22" = "O_" && "$linha13" = "O_" ]]
   then
    var=0
     fim2

  elif [[ "$linha11" != "__" && "$linha12" != "__" && "$linha13" != "__" && "$linha21" != "__" && "$linha22" != "__" && "$linha23" != "__" && "$linha31" != "  " && "$linha32" != "  " && "$linha33" != "  " ]]
   then
    fim3

#DETERMINAR A VEZ DO JOGADOR:

  elif [ "$flag" -eq 0 ]
   then
    echo " Vez de $nome: "
     sleep 1
      flag=1
       jogador

  elif [ "$flag" -eq 1 ]
   then
    echo " Vez do PC aguarde... "  
     sleep 1
      flag=0
       $nivel
        fi
}

jogador(){

   read escolha1

    if [[ "$escolha1" -ne "11" && "$escolha1" -ne "12" && "$escolha1" -ne "13" && "$escolha1" -ne "21" && "$escolha1" -ne "22" && "$escolha1" -ne "23" && "$escolha1" -ne "31" && "$escolha1" -ne "32" && "$escolha1" -ne "33" ]]
     then
      echo "Comando errado!"
       jogador

    elif [ "$escolha1" = "11" ]
     then
      if [ "$linha11" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha11=$"X_"
          flag11="11"
           game
            fi

    elif [ "$escolha1" = "12" ]
     then
      if [ "$linha12" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha12=$"X_"
          flag12="12"
           game
            fi

    elif [ "$escolha1" = "13" ]
     then
      if [ "$linha13" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha13=$"X_"
          flag13="13"
           game
            fi

    elif [ "$escolha1" = "21" ]
     then
      if [ "$linha21" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha21=$"X_"
          flag21="21"
           game
            fi

    elif [ "$escolha1" = "22" ]
     then
      if [ "$linha22" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha22=$"X_"
          flag22="22"
           game
            fi

    elif [ "$escolha1" = "23" ]
     then
      if [ "$linha23" = "O_" ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha23=$"X_"
          flag23="23"
           game
            fi

    elif [ "$escolha1" = "31" ]
     then
      if [ "$linha31" = "O " ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha31=$"X "
          flag31="31"
           game
            fi

    elif [ "$escolha1" = "32" ]
     then
      if [ "$linha32" = "O " ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha32=$"X "
          flag32="32"
           game
            fi

    elif [ "$escolha1" = "33" ]
     then
      if [ "$linha33" = "O " ]
       then
        echo "Casa ocupada!"
         jogador
        else
         linha33=$"X "
          flag33="33"
           game
            fi

    else
     echo "Opção Inválida!"
      game
       fi
}

facil(){

 var=$( shuf -i 11-33 -n1 )

if [[ "$var" != "11" && "$var" != "12" && "$var" != "13" && "$var" != "21" && "$var" != "22" && "$var" != "23" && "$var" != "31" && "$var" != "32" && "$var" != "33" ]]
  then
   $nivel

#Conferir jogadas:

 elif [ "$var" = "$flag11" ]
  then
   $nivel

 elif [ "$var" = "$flag12" ] 
  then
   $nivel

 elif [ "$var" = "$flag13" ] 
  then
   $nivel

 elif [ "$var" = "$flag21" ] 
  then
   $nivel

 elif [ "$var" = "$flag22" ]
  then
   $nivel
 
 elif [ "$var" = "$flag23" ] 
  then
   $nivel

 elif [ "$var" = "$flag31" ] 
  then
   $nivel

 elif [ "$var" = "$flag32" ] 
  then
   $nivel

 elif [ "$var" = "$flag33" ]
  then
   $nivel

#Jogada da AI:

 elif [ "$var" = "11" ]
  then
   linha11=$"O_"
    flag11="11"
     game

 elif [ "$var" = "12" ]
  then
   linha12=$"O_"
    flag12="12"
     game

 elif [ "$var" = "13" ]
  then
   linha13=$"O_"
    flag13="13"
     game

 elif [ "$var" = "21" ]
  then
   linha21=$"O_"
    flag21="21"
     game

 elif [ "$var" = "22" ]
  then
   linha22=$"O_"
    flag22="22"
     game

 elif [ "$var" = "23" ]
  then
   linha23=$"O_"
    flag23="23"
     game

 elif [ "$var" = "31" ]
  then
   linha31=$"O "
    flag31="31"
     game

 elif [ "$var" = "32" ]
  then
   linha32=$"O "
    flag32="32"
     game

 elif [ "$var" = "33" ]
  then
   linha33=$"O "
    flag33="33"
     game

fi
}

medio(){

 var=$( shuf -i 11-33 -n1 )

if [[ "$var" != "11" && "$var" != "12" && "$var" != "13" && "$var" != "21" && "$var" != "22" && "$var" != "23" && "$var" != "31" && "$var" != "32" && "$var" != "33" ]]
  then
   $nivel

#Conferir jogadas:

 elif [ "$var" = "$flag11" ]
  then
   $nivel

 elif [ "$var" = "$flag12" ] 
  then
   $nivel

 elif [ "$var" = "$flag13" ] 
  then
   $nivel

 elif [ "$var" = "$flag21" ] 
  then
   $nivel

 elif [ "$var" = "$flag22" ]
  then
   $nivel
 
 elif [ "$var" = "$flag23" ] 
  then
   $nivel

 elif [ "$var" = "$flag31" ] 
  then
   $nivel

 elif [ "$var" = "$flag32" ] 
  then
   $nivel

 elif [ "$var" = "$flag33" ]
  then
   $nivel

#Aplicação para AI (GANHAR):

  elif [[ "$linha11" = "O_" && "$linha12" = "O_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=0
       game

  elif [[ "$linha12" = "O_" && "$linha13" = "O_" && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=0
       game

  elif [[ "$linha11" = "O_" && "$linha13" = "O_" && "$linha12" != "X_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=0
       game

  elif [[ "$linha21" = "O_" && "$linha22" = "O_" && "$linha23" != "X_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=0
       game

  elif [[ "$linha22" = "O_" && "$linha23" = "O_" && "$linha21" != "X_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=0
       game

  elif [[ "$linha21" = "O_" && "$linha23" = "O_" && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=0
       game

  elif [[ "$linha31" = "O " && "$linha32" = "O " && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=0
       game

  elif [[ "$linha32" = "O " && "$linha33" = "O " && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=0
       game

  elif [[ "$linha31" = "O " && "$linha33" = "O " && "$linha32" != "X " ]]
   then
    linha32=$"O "
     flag32="32"
      var=0
       game

  elif [[ "$linha11" = "O_" && "$linha21" = "O_" && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=0
       game

  elif [[ "$linha11" = "O_" && "$linha31" = "O " && "$linha21" != "X_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=0
       game

  elif [[ "$linha21" = "O_" && "$linha31" = "O " && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=0
       game

  elif [[ "$linha12" = "O_" && "$linha22" = "O_" && "$linha32" != "X " ]]
   then
    linha32=$"O "
     flag32="32"
      var=0
       game

  elif [[ "$linha12" = "O_" && "$linha32" = "O " && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=0
       game

  elif [[ "$linha22" = "O_" && "$linha32" = "O " && "$linha12" != "X_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=0
       game

  elif [[ "$linha13" = "O_" && "$linha23" = "O_" && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=0
       game

  elif [[ "$linha13" = "O_" && "$linha33" = "O " && "$linha23" != "X_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=0
       game

  elif [[ "$linha23" = "O_" && "$linha33" = "O " && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=0
       game

  elif [[ "$linha11" = "O_" && "$linha22" = "O_" && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=0
       game

  elif [[ "$linha11" = "O_" && "$linha33" = "O " && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=0
       game

  elif [[ "$linha22" = "O_" && "$linha33" = "O " && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=0
       game

  elif [[ "$linha31" = "O " && "$linha22" = "O_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=0
       game

  elif [[ "$linha31" = "O " && "$linha13" = "O_" && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=0
       game

  elif [[ "$linha13" = "O_" && "$linha22" = "O_" && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=0
       game

#Contra ataque (HORIZONTAIS):

  elif [[ "$linha11" = "X_" && "$linha12" = "X_" && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha12" = "X_" && "$linha13" = "X_" && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha11" = "X_" && "$linha13" = "X_" && "$linha12" != "O_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha21" = "X_" && "$linha22" = "X_" && "$linha23" != "O_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha22" = "X_" && "$linha23" = "X_" && "$linha21" != "O_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "X_" && "$linha23" = "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha31" = "X " && "$linha32" = "X " && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha32" = "X " && "$linha33" = "X " && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha31" = "X " && "$linha33" = "X " && "$linha32" != "O " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

#Contra ataque (VERTICAIS):

  elif [[ "$linha11" = "X_" && "$linha21" = "X_" && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha11" = "X_" && "$linha31" = "X " && "$linha21" != "O_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "X_" && "$linha31" = "X " && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha12" = "X_" && "$linha22" = "X_" && "$linha32" != "O " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

  elif [[ "$linha12" = "X_" && "$linha32" = "X " && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "X_" && "$linha32" = "X " && "$linha12" != "O_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha13" = "X_" && "$linha23" = "X_" && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha13" = "X_" && "$linha33" = "X " && "$linha23" != "O_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha23" = "X_" && "$linha33" = "X " && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

#Contra ataque (DIAGONAIS):

  elif [[ "$linha11" = "X_" && "$linha22" = "X_" && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha11" = "X_" && "$linha33" = "X " && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "X_" && "$linha33" = "X " && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha31" = "X " && "$linha22" = "X_" && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha31" = "X " && "$linha13" = "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha13" = "X_" && "$linha22" = "X_" && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

#Jogada da AI:

 elif [ "$var" = "11" ]
  then
   linha11=$"O_"
    flag11="11"
      game

 elif [ "$var" = "12" ]
  then
   linha12=$"O_"
    flag12="12"
      game

 elif [ "$var" = "13" ]
  then
   linha13=$"O_"
    flag13="13"
      game

 elif [ "$var" = "21" ]
  then
   linha21=$"O_"
    flag21="21"
      game

 elif [ "$var" = "22" ]
  then
   linha22=$"O_"
    flag22="22"
      game

 elif [ "$var" = "23" ]
  then
   linha23=$"O_"
    flag23="23"
      game

 elif [ "$var" = "31" ]
  then
   linha31=$"O "
    flag31="31"
      game

 elif [ "$var" = "32" ]
  then
   linha32=$"O "
    flag32="32"
      game

 elif [ "$var" = "33" ]
  then
   linha33=$"O "
    flag33="33"
      game

fi
}

dificil(){

 var=$( shuf -i 11-33 -n1 )

 if [[ "$var" != "11" && "$var" != "12" && "$var" != "13" && "$var" != "21" && "$var" != "22" && "$var" != "23" && "$var" != "31" && "$var" != "32" && "$var" != "33" ]]
  then
   $nivel

#Conferir jogadas:

 elif [ "$var" = "$flag11" ]
  then
   $nivel

 elif [ "$var" = "$flag12" ] 
  then
   $nivel

 elif [ "$var" = "$flag13" ] 
  then
   $nivel

 elif [ "$var" = "$flag21" ] 
  then
   $nivel

 elif [ "$var" = "$flag22" ]
  then
   $nivel
 
 elif [ "$var" = "$flag23" ] 
  then
   $nivel

 elif [ "$var" = "$flag31" ] 
  then
   $nivel

 elif [ "$var" = "$flag32" ] 
  then
   $nivel

 elif [ "$var" = "$flag33" ]
  then
   $nivel

#Forçar jogadas laterais:

 elif [[ "$var" = "11" && "$flag2" = 0 ]]
  then
   linha11=$"O_"
    flag11="11"
     flag2=1
      game

 elif [[ "$var" = "13" && "$flag2" = 0 ]]
  then
   linha13=$"O_"
    flag13="13"
     flag2=1
      game

 elif [[ "$var" = "31" && "$flag2" = 0 ]]
  then
   linha31=$"O "
    flag31="31"
     flag2=1
      game

 elif [[ "$var" = "33" && "$flag2" = 0 ]]
  then
   linha33=$"O "
    flag33="33"
     flag2=1
      game

 elif [[ "$var" = "12" && "$flag2" = 0 ]]
  then
   $nivel

 elif [[ "$var" = "21" && "$flag2" = 0 ]]
  then
   $nivel

 elif [[ "$var" = "22" && "$flag2" = 0 ]]
  then
   $nivel

 elif [[ "$var" = "23" && "$flag2" = 0 ]]
  then
   $nivel

 elif [[ "$var" = "32" && "$flag2" = 0 ]]
  then
   $nivel

#Aplicação para AI (GANHAR):

  elif [[ "$linha11" = "O_" && "$linha12" = "O_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha12" = "O_" && "$linha13" = "O_" && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha11" = "O_" && "$linha13" = "O_" && "$linha12" != "X_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha21" = "O_" && "$linha22" = "O_" && "$linha23" != "X_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha22" = "O_" && "$linha23" = "O_" && "$linha21" != "X_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "O_" && "$linha23" = "O_" && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha31" = "O " && "$linha32" = "O " && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha32" = "O " && "$linha33" = "O " && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha31" = "O " && "$linha33" = "O " && "$linha32" != "X " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

  elif [[ "$linha11" = "O_" && "$linha21" = "O_" && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha11" = "O_" && "$linha31" = "O " && "$linha21" != "X_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "O_" && "$linha31" = "O " && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha12" = "O_" && "$linha22" = "O_" && "$linha32" != "X " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

  elif [[ "$linha12" = "O_" && "$linha32" = "O " && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "O_" && "$linha32" = "O " && "$linha12" != "X_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha13" = "O_" && "$linha23" = "O_" && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha13" = "O_" && "$linha33" = "O " && "$linha23" != "X_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha23" = "O_" && "$linha33" = "O " && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha11" = "O_" && "$linha22" = "O_" && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha11" = "O_" && "$linha33" = "O " && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "O_" && "$linha33" = "O " && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha31" = "O " && "$linha22" = "O_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha31" = "O " && "$linha13" = "O_" && "$linha22" != "X_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha13" = "O_" && "$linha22" = "O_" && "$linha31" != "X " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

#Contra ataque (HORIZONTAIS):

  elif [[ "$linha11" = "X_" && "$linha12" = "X_" && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha12" = "X_" && "$linha13" = "X_" && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha11" = "X_" && "$linha13" = "X_" && "$linha12" != "O_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha21" = "X_" && "$linha22" = "X_" && "$linha23" != "O_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha22" = "X_" && "$linha23" = "X_" && "$linha21" != "O_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "X_" && "$linha23" = "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha31" = "X " && "$linha32" = "X " && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha32" = "X " && "$linha33" = "X " && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha31" = "X " && "$linha33" = "X " && "$linha32" != "O " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

#Contra ataque (VERTICAIS):

  elif [[ "$linha11" = "X_" && "$linha21" = "X_" && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha11" = "X_" && "$linha31" = "X " && "$linha21" != "O_" ]]
   then
    linha21=$"O_"
     flag21="21"
      var=21
       game

  elif [[ "$linha21" = "X_" && "$linha31" = "X " && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha12" = "X_" && "$linha22" = "X_" && "$linha32" != "O " ]]
   then
    linha32=$"O "
     flag32="32"
      var=32
       game

  elif [[ "$linha12" = "X_" && "$linha32" = "X " && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "X_" && "$linha32" = "X " && "$linha12" != "O_" ]]
   then
    linha12=$"O_"
     flag12="12"
      var=12
       game

  elif [[ "$linha13" = "X_" && "$linha23" = "X_" && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha13" = "X_" && "$linha33" = "X " && "$linha23" != "O_" ]]
   then
    linha23=$"O_"
     flag23="23"
      var=23
       game

  elif [[ "$linha23" = "X_" && "$linha33" = "X " && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

#Contra ataque (DIAGONAIS):

  elif [[ "$linha11" = "X_" && "$linha22" = "X_" && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha11" = "X_" && "$linha33" = "X " && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha22" = "X_" && "$linha33" = "X " && "$linha11" != "O_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha31" = "X " && "$linha22" = "X_" && "$linha13" != "O_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha31" = "X " && "$linha13" = "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha13" = "X_" && "$linha22" = "X_" && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

#Estrategia da AI:

#1
  elif [[ "$linha11" = "X_" && "$linha22" != "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha13" = "X_" && "$linha22" != "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha31" = "X " && "$linha22" != "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

  elif [[ "$linha33" = "X " && "$linha22" != "X_" && "$linha22" != "O_" ]]
   then
    linha22=$"O_"
     flag22="22"
      var=22
       game

#2
  elif [[ "$linha11" = "O_" && "$linha33" != "X " && "$linha33" != "O " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

  elif [[ "$linha13" = "O_" && "$linha31" != "X " && "$linha31" != "O " ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha31" = "O_" && "$linha13" != "X_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha33" = "O_" && "$linha11" != "X_" && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha11" = "O_" && "$linha33" = "O_" && "$linha12" != "X_" && "$linha23" != "X_" && "$linha13" != "X_" ]]
   then
    linha13=$"O_"
     flag13="13"
      var=13
       game

  elif [[ "$linha11" = "O_" && "$linha33" = "O_" && "$linha21" != "X_" && "$linha32" != "X " && "$linha31" != "X_" ]]
   then
    linha31=$"O "
     flag31="31"
      var=31
       game

  elif [[ "$linha13" = "O_" && "$linha31" = "O " && "$linha21" != "X_" && "$linha12" != "X_" && "$linha11" != "X_" ]]
   then
    linha11=$"O_"
     flag11="11"
      var=11
       game

  elif [[ "$linha13" = "O_" && "$linha31" = "O " && "$linha23" != "X_" && "$linha32" != "X " && "$linha33" != "X " ]]
   then
    linha33=$"O "
     flag33="33"
      var=33
       game

#Jogada da AI:

 elif [[ "$var" = "11" && "$flag2" = 1 ]]
  then
   linha11=$"O_"
    flag11="11"
      game

 elif [[ "$var" = "12" && "$flag2" = 1 ]]
  then
   linha12=$"O_"
    flag12="12"
      game

 elif [[ "$var" = "13" && "$flag2" = 1 ]]
  then
   linha13=$"O_"
    flag13="13"
      game

 elif [[ "$var" = "21" && "$flag2" = 1 ]]
  then
   linha21=$"O_"
    flag21="21"
      game

 elif [[ "$var" = "22" && "$flag2" = 1 ]]
  then
   linha22=$"O_"
    flag22="22"
      game

 elif [[ "$var" = "23" && "$flag2" = 1 ]]
  then
   linha23=$"O_"
    flag23="23"
      game

 elif [[ "$var" = "31" && "$flag2" = 1 ]]
  then
   linha31=$"O "
    flag31="31"
      game

 elif [[ "$var" = "32" && "$flag2" = 1 ]]
  then
   linha32=$"O "
    flag32="32"
      game

 elif [[ "$var" = "33" && "$flag2" = 1 ]]
  then
   linha33=$"O "
    flag33="33"
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
  echo " $nome GANHOU A PARTIDA! "
   sleep 2

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
      flag11=0
      flag12=0
      flag13=0
      flag21=0
      flag22=0
      flag23=0
      flag31=0
      flag32=0
      flag33=0
      flag2=0
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
  echo -e " \033[41;1;30m                 \033[0m"
  echo -e " \033[41;1;30m     1   2   3   \033[0m"
  echo -e " \033[41;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[41;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[41;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[41;1;30m                 \033[0m" 
  echo " PC GANHOU A PARTIDA! "
   sleep 2

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
      contador=0
      flag11=0
      flag12=0
      flag13=0
      flag21=0
      flag22=0
      flag23=0
      flag31=0
      flag32=0
      flag33=0
      flag2=1
      flag=0
      var=0
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
  echo -e " \033[43;1;30m                 \033[0m"
  echo -e " \033[43;1;30m     1   2   3   \033[0m"
  echo -e " \033[43;1;30m  1 _$linha11|_$linha12|_$linha13  \033[0m"
  echo -e " \033[43;1;30m  2 _$linha21|_$linha22|_$linha23  \033[0m"
  echo -e " \033[43;1;30m  3  $linha31| $linha32| $linha33  \033[0m"
  echo -e " \033[43;1;30m                 \033[0m" 
  echo " DEU VELHA! "
   sleep 2

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
      flag11=0
      flag12=0
      flag13=0
      flag21=0
      flag22=0
      flag23=0
      flag31=0
      flag32=0
      flag33=0
      flag2=0
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

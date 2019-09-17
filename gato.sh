#! /bin/bash

inicio(){
  acom=(. . . . . . . . .)
  jugador=1
  ini=1
  echo "====================="
  echo "Bienvenido"
}

posicion(){
  pos=$(( $1 * 3 + $2 ))
  if [ ${acom[$pos]} == "." ]; then 
    acom[$pos]=$3
    jugador=$((jugador%2+1))
  else
    echo "No existe"
  fi
}

tablero(){
  echo "r\c 0 1 2"
  echo "0   ${acom[0]} ${acom[1]} ${acom[2]}"
  echo "1   ${acom[3]} ${acom[4]} ${acom[5]}"
  echo "2   ${acom[6]} ${acom[7]} ${acom[8]}"
}

revisar(){
  if [ ${acom[$1]} != "." ] && [ ${acom[$1]} == ${acom[$2]} ] && [ ${acom[$2]} == ${acom[$3]} ]; then
    ini=0
  fi
}

revisarjue(){
  revisar 0 1 2
  revisar 3 4 5
  revisar 6 7 8
  revisar 0 3 6
  revisar 1 4 7
  revisar 2 5 8
  revisar 0 4 8
  revisar 2 4 6
}


inicio
while [ 1 == 1 ]; do
  echo ""
  if [ $jugador == 1 ]; then punto=O
  else punto=X; fi
  echo "Turno: $jugador: ($punto)"
  tablero
  echo ""
  echo "  Debes escribir:"
  echo "  *. posicion fila columna"
  echo "  *. reinicio"
  while [ 1 == 1 ]; do
    read -r cmd a b
    if [ $cmd == "posicion" ]; then
    posicion $a $b $punto
  break
    elif [ $cmd == "reinicio" ]; then
  inicio
  break
    else
  echo "Ingresa un comando válido"
    fi
  done
  revisarjue

  if [ $ini != 1 ]; then
    echo "Fin del juego"
    jugador=$((jugador%2+1))
    echo "El jugador $jugador ($punto) es el ganador!!"
    while [ 1 == 1 ]; do
      read -r cmd n
      if [ $cmd == "reinicio" ]; then
    inicio
    break
      fi
    done
  fi
done
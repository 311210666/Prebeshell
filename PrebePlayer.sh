#!/bin/bash

while [[ -z $(ls -d /usr/bin/mpg123) ]]
do
    clear
    echo -e " Es necesario instalar el complemento mpg123 "
    echo -ne " ¿Deseas imstalarlo ahora? "
    echo -e " ¿Deseas imstalarlo ahora? "
    echo -e " [S/N] "
    echo -ne " =  "
    read dec
        case $dec in
        S|Si)
            sudo apt-get install mpg123                         #... lo instala
            echo -e " Ya puedes usar tu PrebeSHIDA "
        ;;
        N|Nel)
            echo -e "  Que aburrido eres. Adios "
            sleep 2
            exit
        ;;
        *)
            echo -e " ERROR "
            sleep 1
            clear
        ;;
    esac
done


echo -e " Abriendo PrebeSHIDA "
salida=0                                                        

                                        

while [ $salida -ne 1 ]                                     #Ciclo en el que se tendrán las opciones de control del reproductor
do
    clear
    echo -e "----------------------P---E---E---H---D-------------------"
    echo -e "------------------------R---B---S---I---A-----------------"
    echo -e "-_- A) Reproducir lista de la carpeta actual              "
    echo -e "-_- B) Salir del reproductor                              "
    
    echo -ne "\tOpción = "
    read cho
    case $cho in
        A)
            echo -e "      Reproduciendo         "
            echo -e "      -::--Comandos-::-     "
            echo -e "      Reproducir/Pausa[s]   "
            echo -e "      Vol+[+]               "
            echo -e "      Vol-[-]               "
            echo -e "      Atrás[q]              "
            echo -e "      Ayuda[h]              "
            echo -e "      Siguiente[f]          "
            echo -e "      Anterior[d]           "
            
            mpg123 --title -qC *.mp3
        ;;
        

        B)
            echo -e " Vuelve pronto "

            salida=1
        ;;
        
        *)
            echo -e " ERROR FATAAAAAAAAL prrro >:V "

        ;;
    esac

done
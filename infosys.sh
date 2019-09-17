#!/bin/bash
  
echo "***INFORMACION DEL SISTEMA***"
echo "Usuario actual: $(whoami)"
echo "Memoria total: $(cat /proc/meminfo | grep "MemTotal" | grep "[1-9].*" -o)"
echo "arquitectura del sistema: $(uname -m)"
echo "Sistema operativo: $(cat /proc/version) "

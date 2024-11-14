#!/bin/bash

rm -rf /publico /adm /ven /sec
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f rogerio
userdel -r -f amanda
userdel -r -f josefina

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Lista de Usuários------------------------------------------------------------------------------------------------------------------"

cat /etc/passwd

echo "Lista de Grupos--------------------------------------------------------------------------------------------------------------------"

cat /etc/group

echo "Lista de Diretórios----------------------------------------------------------------------------------------------------------------"

ls /

chmod -x apagar_iac2.sh


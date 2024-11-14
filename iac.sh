#!/bin/bash

echo "Criando Diretório....."

mkdir /publico /adm /ven /sec

echo "Criando Grupos....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários do Grupo GRP_ADM....."

useradd carlos -c "Carlos Silva" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria  Sousa" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao  Santos" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

echo "Criando Usuários do Grupo GRP_VEN....."

useradd debora -c "Debora Cardoso" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana  Matoso" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto  Santana" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

echo "Criando Usuários do Grupo GRP_SEC....."

useradd josefina -c "Josefina Prates" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Ferreira" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério  Freitas" -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e


echo "Configurando Permissões....."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

echo "Finalizando Script__________________________________________________________________________________________________________________"

echo "Lista de Usuários___________________________________________________________"

cat /etc/passwd

echo "Lista de Grupos______________________________________________________________"

cat /etc/group

echo "Diretórios criados___________________________________________________________"

ls -l /

chmod -x iac2.sh


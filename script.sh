#!/bin/bash

echo "Iniciando o script para criação de pastas e grupos"
echo "1 - Criando pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "*** Pastas criadas com sucesso ***"
echo "2 - Criando grupos"
addgroup GRP_ADM
addgroup GRP_VEN
addgroup GRP_SEC
echo "*** Grupos criados"
echo "3 - Criando usuários"
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEND
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
echo "*** Usuários criados ***"
echo "4 - Alterando as permissões das pastas ***"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "*** Permissões Alteradas ***"

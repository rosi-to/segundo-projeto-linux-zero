#!/bin/bash


echo 'criando diretorios...'

mkdir publico
mkdir adm
mkdir ven
mkdir sec


echo 'criando usuarios/grupos...'

useradd carlos -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd maria -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd joao -m -s /bin/bash -p$(openssl passwd -crypt 1234)

useradd debora -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd sebastiana -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd roberto -m -s /bin/bash -p$(openssl passwd -crypt 1234)

useradd josefina -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd amanda -m -s /bin/bash -p$(openssl passwd -crypt 1234)
useradd rogerio -m -s /bin/bash -p$(openssl passwd -crypt 1234)


echo 'criando grupos...'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



echo 'classifiacando usuarios e grupos...'

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio



echo 'definindo permissoes...'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo 'processo concluido!'

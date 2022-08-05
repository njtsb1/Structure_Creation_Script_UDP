#!/bin/bash

echo "Creating Directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating User Groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating Users..."

useradd charles -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM
useradd mary -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM
useradd john -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM

useradd deborah -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN
useradd sebastian -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN

useradd josefh -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC

echo "Specifying directory permissions...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "The end....."

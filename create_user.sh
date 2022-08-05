#!/bin/bash

echo "Creating system users...."

useradd guest -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt Password123)
passwd guest -e

useradd guest1 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt Password123)
passwd guest1 -e

useradd guest2 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt Password123)
passwd guest2 -e

useradd guest3 -c "Guest User" -s /bin/bash -m -p $(openssl passwd -crypt Password123)
passwd guest3 -e

echo "Finished!!"

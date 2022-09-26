# This script will read a csv file that contains 20 linux users
# This script will create each user on the server and add to an existing group called 'Developers'
# This script will first check for the existence of the user on the system before it will attempt to create the user
# The user that is being created will also have a default home folder
# Each user should have a .ssh folder within its HOME folder. If it does not exist, then it will be created.
# Fro each user's SSH configuration, we will create an authorized_key file and add a public key.


#!/bin/bash
userfile=$(cat names.csv)
PASSWORD=password

if [ $(id -u) -eq 0 ]; then
     for user in $userfile; do
         echo $user
         if id "$user" &>/dev/null
         then
             echo "User $user exists"
         else
             useradd -m -d /home/$user -s /bin/bash -g developers $user
             echo "New User $user created"
             echo

             su - -c "mkdir ~/.ssh" $user
             echo ".ssh directory created for new user"
             echo

             su - -c "chmod 700 ~/.ssh" $user
             echo "user permission for .ssh directory set"
             echo

             su - -c "touch ~/.ssh/authorized_keys" $user
             echo "authorized keys file created"
             echo
             
             su - -c "chmod 600 ~/.ssh/authorized_keys" $user
             echo "user permissions for the authorized key file set"
             echo

             cp -R "/home/ubuntu/shell/id_rsa.pub" "/home/$user/.ssh/authorized_keys"
             echo "Copied the public key to New user account on the server"
             echo
             echo

             echo "User created"

             sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$user"
             sudo passwd -x 5 $user
             echo "Password set for user $user" 
         fi
     done
else
    echo "Only Admin Can Onboard A User"
fi

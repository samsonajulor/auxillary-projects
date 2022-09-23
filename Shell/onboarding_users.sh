#!/bin/bash

# automating the creation of new users

# variables
CSV_FILE=names.csv
GROUP_NAME=developers
SSH_SKEL=/etc/skel/.ssh/
AUTH=authorized_keys
PASSWORD=password



# command
if [ $(getent group devlopers) ];
then
    echo group already exists
else
    sudo groupadd $GROUP_NAME
    echo group created successfully
fi

# add SSH folder to the skel directory
if [ -d "$SSH_SKEL" ];
then 
    echo "$SSH_SKEL already exists"
else 
    sudo mkdir -p $SSH_SKEL
    sudo touch $SSH_SKEL/authorized_keys
    sudo bash -c "cat ../$AUTH >> $SSH_SKEL/authorized_keys"
fi

# create each user on the server
while IFS= read USERNAME
    do 
     # check if the username already exists
     if [ $(getent passwd $USERNAME) ];
     then 
      echo $USERNAME already exists
     else
      sudo useradd -m -G $GROUP_NAME -s /bin/bash $USERNAME
      sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "${USERNAME}"
      sudo passwd -x 5 ${USERNAME}
      sudo chmod 700 /home/$USERNAME/.ssh 
      sudo chmod 644 /home/$USERNAME/.ssh/$AUTH
      echo $USERNAME successfully created
     fi
    done < $CSV_FILE

exit 0
# auxillary-projects
In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

- Create the project folder called Shell
`mkdir Shell`

- Move into the Shell folder
`cd Shell`

- Create a csv file name names.csv
`touch names.csv`

- Open the names.csv file
`vim names.csv`

- Insert some random names into it. (One name per line)

The script you created should read the CSV file, create each user on the server, and add to an existing group called developers (You will need to manually create this group ahead).
`touch onboarding_users`
`chmod +x onboarding_users`

Ensure that your script will first check for the existence of the user on the system, before it will attempt to create that it.

## how to check if a user exists
`cd /etc`
`getent group developers`

## how to read a file
``

## use the internal fields separator $IFS
// url of ifs

PS: Anytime a new user is created, examples.desktop get populated in the /etc/skel/ directory. Put your variables in quotes if there is a tendency for linux to expand it.

Ensure that the user that is being created also has a default home folder

Ensure that each user has a .ssh folder within its HOME folder. If it does not exist, then create it.

For each user’s SSH configuration, create an authorized_keys file and add ensxure it has the public key of your current user.

- remove the user if error
`sudo userdel -r <username>`

Before Deploying your script, you will need to update your current user with the correct public key and private key.

In your current home directory change directo .ssh folder

`cd .ssh`

create a file for the public key
`touch id_rsa.pub`

open the file using your favorite editor and paste in the public key
`vi id_rsa.pub`

create a file for your private key
`touch id_rsa`

open the file using your favorite editor and paste in the private key.
`vi id_rsa`

The Public Key
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzKZyicHxIkklSrNlxsJyyTrcIdBIt84Z0cQb3R4k0jH53kxkaT5hP8tfWTe62LXi7vV86fY+SX7TBNM76XGCbw/6vrMGegm6J1x2i1AiLNwq5nqTjOGn0AIwku4IlCCLAB7tdfRyVuCarmBlwny3lzRyybIUAWXR/D6vpN09MsDILbKdhay+Q/p9OUBMSLPqXdY/QIh/Oe3rVv1lwY3AohNfq7V3tO88zKswfA5iiexNiSYX1myT0OrX8cBE771j9quoNZhQgaLI1mIMtAvnHQChrn9k2nUaO/BMBCQGol5XzGv1ado7hgoVPoluIUD+FGNo/pH4zcmDLICH6drXY/C9MESnkMUPLFxBXKO/OitApY71vRao9nAhAwpVMsy6FqiOb5uawhvhoHYIHTV/f4EtagVagRMP2PxYMYR6jykIV4MPJTkCm+lGhTyMlRu+qRQjdLn8AAtHf4aEV8dIkoGh088DI7eA/4o0wz4OV4upH5ewSFS+5IHmRECEW5Nc=
```

The private key
```

to switch to a superuser
`sudo su

Create a git repository and name it auxillary-projects
name your shell script onboarding users
Screen record your work, and demo how you have onboarded users onto the server
Submit links to your github repository and your demo
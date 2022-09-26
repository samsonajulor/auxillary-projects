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

Link to demo
[demo](https://aux-project-demo.s3.us-east-1.amazonaws.com/aux_project_demo.mp4?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEMaCWV1LXdlc3QtMyJGMEQCIFr1mPuUhRnandbzmgR5%2BVny8bf%2F2b7gWIOl8bWnjV%2FGAiANC9qoG4etRDA9EdfjwpukG%2BcC9K7DM6Bzklu3CUgTNyrtAgjs%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDAyMDg1NDQxMjQ0OCIMnutCMvt6dGUgfdQXKsECRUxtekAnOtsdTKqFE2I6VVxnofpD296LR%2Bo4nPe%2FJ6bE6cxqDrYrxgFlAmXgj4SV%2B9c1kBnilBHffyAW5kgXfCeWI3uMoKuzNrwGK%2F2w0yUfu6%2BGGC0zOpdEF314yQid38l8zNP0q%2Fa5QcHXbFdbX411cVHyx71un38zpSPkKUOwVZdwrzxewBxJp6hS88ECKE32KAbn%2BKt9tHJ2p8%2BAaarrZr01%2BSxSBlqzvw4hcf1Ojh6oJrKChOfnZ2PqXCyQX9Pg%2BfOwJKc84Nw0%2B%2BW%2BtV%2FbMHP3fj6K83p8hh16oNyVkhpeNZSzMIZaDqBxqZlXyRjA5pcPBavrKeWMK1x9reHrj1bx7wSH93lLajzD38P0GNKSmk5EoeHbiENUcLuXofG7t4W15FERuEh2%2F2qXAHvFGgvUkALf1J46j9jk9t62MNyZxZkGOrQC4vvgY%2Fs1QkBPPwTxI%2FQkQnPx%2FLTO1yJ7tNNBPoSLcfeEE3YOZ%2Fel2056Vowz9JuAebLYROkBuyuCKtbxE3nGxTPkWeS0eo1GAAz1AI0BuGFYBvUlq5re4SEaKzyIFUHOSA424Ro8K22%2FehLcKC5xtesUmwsfrzVkL%2B9hmAJtMjXm9rEDOYMycSvS965zW7YZN8IMYU3pVboDHPmulbzvof7JhtVphDatoWFaKqu0gd%2Bvn4LE98Dr9sNm7Wkm6%2BXRaXzBjsRapY9hBJqleHwbqqjUApJBtsx0onknM1Ca2LGCsWNXZJ9Xa2k%2FMe%2BG3r%2FQmMMkXYX0dyeZXq8KH0KRAasu7LxQbG%2BVeocowzYBxN%2BiWTN6NhJSn1u4w0ztRQX7cyzkgyYmv2Ih3SMJCtWLN%2FOExaM%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20220926T113737Z&X-Amz-SignedHeaders=host&X-Amz-Expires=299&X-Amz-Credential=ASIAQJWYFCSQBRO3AU64%2F20220926%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5bf60405ad57b0d0f8fd414e18a1e10eb770ad0a6ee9dac90add5ee644fb6b35)
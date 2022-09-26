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
-----BEGIN OPENSSH PRIVATE KEY-----
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
kmaSGj362OnCCNAAAACWRhcmVARGFyZQE=
-----END OPENSSH PRIVATE KEY-----
```

to switch to a superuser
`sudo su`

Link to demo
[demo](https://aux-project-demo.s3.us-east-1.amazonaws.com/aux_project_demo.mp4?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEMaCWV1LXdlc3QtMyJGMEQCIFr1mPuUhRnandbzmgR5%2BVny8bf%2F2b7gWIOl8bWnjV%2FGAiANC9qoG4etRDA9EdfjwpukG%2BcC9K7DM6Bzklu3CUgTNyrtAgjs%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDAyMDg1NDQxMjQ0OCIMnutCMvt6dGUgfdQXKsECRUxtekAnOtsdTKqFE2I6VVxnofpD296LR%2Bo4nPe%2FJ6bE6cxqDrYrxgFlAmXgj4SV%2B9c1kBnilBHffyAW5kgXfCeWI3uMoKuzNrwGK%2F2w0yUfu6%2BGGC0zOpdEF314yQid38l8zNP0q%2Fa5QcHXbFdbX411cVHyx71un38zpSPkKUOwVZdwrzxewBxJp6hS88ECKE32KAbn%2BKt9tHJ2p8%2BAaarrZr01%2BSxSBlqzvw4hcf1Ojh6oJrKChOfnZ2PqXCyQX9Pg%2BfOwJKc84Nw0%2B%2BW%2BtV%2FbMHP3fj6K83p8hh16oNyVkhpeNZSzMIZaDqBxqZlXyRjA5pcPBavrKeWMK1x9reHrj1bx7wSH93lLajzD38P0GNKSmk5EoeHbiENUcLuXofG7t4W15FERuEh2%2F2qXAHvFGgvUkALf1J46j9jk9t62MNyZxZkGOrQC4vvgY%2Fs1QkBPPwTxI%2FQkQnPx%2FLTO1yJ7tNNBPoSLcfeEE3YOZ%2Fel2056Vowz9JuAebLYROkBuyuCKtbxE3nGxTPkWeS0eo1GAAz1AI0BuGFYBvUlq5re4SEaKzyIFUHOSA424Ro8K22%2FehLcKC5xtesUmwsfrzVkL%2B9hmAJtMjXm9rEDOYMycSvS965zW7YZN8IMYU3pVboDHPmulbzvof7JhtVphDatoWFaKqu0gd%2Bvn4LE98Dr9sNm7Wkm6%2BXRaXzBjsRapY9hBJqleHwbqqjUApJBtsx0onknM1Ca2LGCsWNXZJ9Xa2k%2FMe%2BG3r%2FQmMMkXYX0dyeZXq8KH0KRAasu7LxQbG%2BVeocowzYBxN%2BiWTN6NhJSn1u4w0ztRQX7cyzkgyYmv2Ih3SMJCtWLN%2FOExaM%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20220926T113737Z&X-Amz-SignedHeaders=host&X-Amz-Expires=299&X-Amz-Credential=ASIAQJWYFCSQBRO3AU64%2F20220926%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5bf60405ad57b0d0f8fd414e18a1e10eb770ad0a6ee9dac90add5ee644fb6b35)
# c-sockets-library

Library to manage stream socket connections in C

#### *PREREQUISITES*

It's assumed that `git` is already installed on your local machine. 

To install it on a Debian-based Linux distribution like Ubuntu just run `sudo apt-get install git`.

On a Fedora distribution run the command `sudo yum install git`

For other options, visit [Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

#### *INSTALLATION STEPS*

1. Open the Linux console.

2. Go to your home directory by running `cd $HOME`

3. Run the command `git clone https://github.com/fedecatinello/c-sockets-library.git`

4. Enter the repository folder which contains the source files, just run `cd c-sockets-library/`

5. Run command `make all`

6. Create `LD_LIBRARY_PATH` environment variable with the command `export LD_LIBRARY_PATH=$HOME/c-sockets-library/`

7. Create a link between the library and the system by running `ldconfig -n $HOME/c-sockets-library/`


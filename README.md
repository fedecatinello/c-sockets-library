# c-sockets-library

Library to manage stream socket connections in C

#### *PREREQUISITES*

It's assumed that `git` is already installed on your local machine. 

To install it in a Debian-based Linux distribution like Ubuntu just run `sudo apt-get install git`.

On a Fedora distribution run the command `sudo yum install git`

For other options, visit [Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

#### *INSTALLATION STEPS*

1. Open the Linux console.

2. Run the command `git clone https://github.com/fedecatinello/c-sockets-library.git`

3. Enter the repository folder which contains the source files.

4. Run command `make all`

5. Create `LD_LIBRARY_PATH` environment variable running `export LD_LIBRARY_PATH=/path/to/the/shared/library`

6. Create link betwenn the library and the system, run `ldconfig -n /path/to/the/shared/library`



  

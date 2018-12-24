## InfixToPostfix implementation in Cpp
**Note:** Lua 5.3.4 source folder is required to run this program.

#### Files included:
    Prog3_2.lua:
        Implementation of the Infix to Postfix algorithm as a function in Lua.
        You can test it out by removing the comments from line 45-48.
    Prog3_3.cpp:
        This program contains a lua enviornment which will execute a lua file specified by the command line argument.
        After executing prog3_2.lua, the program will take a line of input from stdin.
        It will call the InfixToPostfix function on the input and print out the result

#### Example compilation:
    g++ prog3_3.cpp -o prog3_3 -I lua-5.3.4/src -L lua-5.3.4/src -l lua -l m -l dl

#### Example execution:
    ./prog3_3 <prog3_2.lua>
**Note**: <> are not the part of the command

#### Example run:
    4*( 7+8)*2
    478+*2
**Note**: First line in an input.

Darpan Beri

darpanberi.99@gmail.com || dberi@sdsu.edu

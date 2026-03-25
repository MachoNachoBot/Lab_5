# Lab_5

# Part 1
gcc -O0 -S helloworld.c
gcc -no-pie helloworld.s -o helloworld
./helloworld

# Part 2

# Compile

g++ -O0 -S helloworldcpp.cpp
g++ -no-pie helloworldcpp.s -o helloworldcpp

Comparsion Optimization 

gcc -O4 -S helloworld.c
gcc -no-pie helloworld.s -o helloworld

g++ -O4 -S helloworldcpp.cpp
g++ -no-pie helloworldcpp.s -o helloworldcpp

# Run
./helloworldcpp

./helloworld

./helloworldcpp

# Part 3

# Compile 
gcc -no-pie find_max.s -o find_max
gcc -O0 -S whileloop.c
gcc -no-pie whileloop.s -o whileloop

# Run
./find_max
echo $?

./whileloop
echo $?

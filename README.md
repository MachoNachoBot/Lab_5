# Lab_5
CMPE310

Part 1
gcc -O0 -S helloworld.c
gcc -no-pie helloworld.s -o helloworld
./helloworld

Part 2
g++ -O0 -S helloworldcpp.cpp
g++ -no-pie helloworldcpp.s -o helloworldcpp
./helloworldcpp

Part 3
gcc -no-pie while_loop.s -o while_loop
./while_loop
echo $?

gcc -no-pie find_max.s -o find_max
./find_max
echo $?
g++-7 ../src/test_common.cpp ../src/allocator_tester.cpp -std=c++17 -g -Wall -Wextra -Wno-unused-variable -Wno-unused-parameter -Wno-empty-body -DNDEBUG -O2 -flto -fno-builtin-malloc -fno-builtin-calloc -fno-builtin-realloc -fno-builtin-free -ljemalloc  -lpthread -o tester_standart.bin

#/bin/sh
#valgrind --tool=cachegrind ./leechmission-qt 2>&1 | tee runlog
valgrind --tool=massif --threshold=0.2 ./leechmission-qt 2>&1 | tee runlog
#valgrind --tool=memcheck --leak-check=full --leak-resolution=high --num-callers=48 --log-file=x-valgrind --show-reachable=no ./leechmission-qt 2>&1 | tee runlog

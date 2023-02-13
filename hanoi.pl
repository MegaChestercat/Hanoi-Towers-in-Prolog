tower_of_hanoi(1, X, Y, _):- %base case
    write('The top disc from '),
    write(X),
    write(' is moved to '),
    write(Y),
    nl.

tower_of_hanoi(N, A, C, B):- %N -number of discs being evaluated at that moment, A- source, C- destination, B - auxiliary
    N > 1, 
    M is N-1,
    tower_of_hanoi(M, A, B, C), %Move N-1 disks from A to B, using C
    tower_of_hanoi(1, A, C, _), %Move the last disk from A to C
    tower_of_hanoi(M, B, C, A). %Move N-1 disks from B to C, using A
/* PARENT */
/* X is a parent of Y if Y is a child of X */
parent(X,Y):- child(Y,X).

/* SIBLING */
/* X is a sibling of Y if X and Y share the same parent */
/* X and Y cannot be the same as one person cannot be their own sibling */
sibling(X,Y):- parent(P,X), parent(P,Y), X\=Y.

/* NTH COUSINS */
/* base case (first cousin) */
/* X and Y are first cousins if the parent of X and Y are siblings, and X and Y cannot equal each other */
nthcousin(X,Y,1):- parent(A,X), parent(B,Y), sibling(A,B), X\=Y.

/* find a parent of X and a parent of Y, recursively call nthCousin again with new N (find the Nth cousin of X and Y's parents) */
/* decrements towards the base case, to eventually find the solution */
nthcousin(X,Y,N):- parent(A,X), parent(B,Y), nthcousin(A,B,N1), N is N1 + 1. 

/* NTH COUSINS K TIMES REMOVED */
/* base case is nth cousin, 0 times removed, so can just call nthcousin */
nthcousinkremoved(X,Y,N,0):- nthcousin(X,Y,N).

/* find the parent of one of the given people, then recursively call nthcousinkremoved with that parent and new K */
nthcousinkremoved(X,Y,N,K) :- parent(Z,Y), nthcousinkremoved(X,Z,N,K1), K is K1+1.

/* GRANDPARENT */
/* X is the grandparent of Y if they are the parent of Y's parent */
grandparent(X,Y):- parent(Z, Y), parent(X,Z).

/* KTH CHILD */
/* gets the age of a child of the given parent, to be used in kthchild */
getageofchild(X,Y):- child(Z,X), age(Z,Y). 

/* finds the kth child of a given parent */
/* first creates a set of the ages of all of the given parent's children */
/* then sorts and reverses the set to get the ages of the children in decreasing order */ 
/* nth0 finds the nth element in a list, so that is used to find the (k-1)th item in the set */
/* decrements K because first child is 0 in list, second child is 1, etc. */
/* the age definition is used to then find which child is that age */
kthchild(C,P,K):- 
                setof(C, getageofchild(P,C),Set), 
                sort(Set,Sorted),
                reverse(Sorted,Reversed),
                nth0(Knew,Reversed,Age),
                K is Knew + 1,
                age(C,Age).
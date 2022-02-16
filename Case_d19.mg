/* Case d=19 */

load "Mazur42p.mg";

print "Case d=19:";

/* Character chi */

Chi:= function(p)
f:=order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,2));
if KroneckerSymbol(19,p) eq 1 then
   f:=2*order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,19));
end if;
return f;
end function;

/* First space */

print("Forms in Space 2^7*19:");
G:=DirichletGroup(2^7*19);                       
eps:=Elements(G)[6]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick for all forms */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do
print(DiscardPlace(19,eps,Chi,new,i,1,20));
end for;

/* Second space */

print("Forms in Space 2^8*19:");
G:=DirichletGroup(2^8*19);                       
eps:=Elements(G)[6]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do
print(DiscardPlace(19,eps,Chi,new,i,1,20));
end for;

/* Mazur's trick for forms 1,2 assuming that c is divisible by 3 */

print("Primes obtained via Mazur's trick (lowering the level case) for forms 1 and 2:");
for i in [1,2] do                                 
print(MazurTrickMultiplicative(new,3,eps,[i]));
end for;

/* If c is not divisible by 3*/

print "Cannot discard the forms with parameter: [1,2]";

/* Forms 1, 2 have CM by -8  (then we use Proposition 3.4 of Ellenberg) */

for i in [1,2] do
print "The form", i, "has CM:", HasCM(new[i]);
end for;

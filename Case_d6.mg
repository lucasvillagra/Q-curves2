/* Case d=6 */

load "Mazur42p.mg";

print "Case d=6:";

/* Character chi */

Chi:= function(p)
f:=order(KroneckerSymbol(-1,p));
if KroneckerSymbol(6,p) eq 1 then
   f:=2*order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,3));
end if;
return f;
end function;

/* First space */

print("Forms in Space 2^8*3:");
G:=DirichletGroup(2^8*3);                       
eps:=Elements(G)[6]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick for forms without CM */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do
print(DiscardPlace(6,eps,Chi,new,i,1,10));
end for;

print "Cannot discard the forms with parameter: [3,6,7]";

/* Forms 3, 6, 7 have CM by -8 */

for i in [3,6,7] do
print "The form", i, "has CM:", HasCM(new[i]);
end for;

/* Second space */

print("Forms in Space 2^9*3:");
G:=DirichletGroup(2^9*3);
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
print(DiscardPlace(6,eps,Chi,new,i,1,20));
end for;

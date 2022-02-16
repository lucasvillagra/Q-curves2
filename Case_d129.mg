/* Case d=129 */

load "Mazur42p.mg";

print "Case d=129:";

/* Character chi */

Chi:= function(p)
f:=order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,2));
if KroneckerSymbol(129,p) eq 1 then
   f:=2*order(KroneckerSymbol(p,3)*KroneckerSymbol(p,43));
end if;
return f;
end function;

/* First space */

print("Forms in Space 2*129:");
G:=DirichletGroup(2*129);                       
eps:=Elements(G)[4]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick for all the forms */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do
print(DiscardPlace(129,eps,Chi,new,i,1,20));
end for;

/* Second space */

print("Forms in Space 2^8*129:");
G:=DirichletGroup(2^8*129);                       
eps:=Elements(G)[13]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick for almost all forms */

print("Primes obtained via Mazur's trick for almost all non-CM forms:");
for i in [1..#new-3] do
print(DiscardPlace(129,eps,Chi,new,i,1,20));
end for;

/* The last  three forms are treated in PARI/GP */

print "Cannot discard the forms with parameter: [1, 2, 3, 4]";

/* Forms 1, 2, 3, 4 have CM by Z[sqrt{-2}] */

for i in [1,2,3,4] do
print "The form", i, "has CM:", HasCM(new[i]);
end for;

/* Case d=11 */

load "Mazur42p.mg";

print "Case d=11:";

/* Character chi */

Chi:= function(p)
f:=order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,2));
if KroneckerSymbol(11,p) eq 1 then
   f:=2*order(KroneckerSymbol(-1,p)*KroneckerSymbol(p,11));
end if;
return f;
end function;

/* First space */

print("Forms in Space 2^7*11:");
G:=DirichletGroup(2^7*11);                       
eps:=Elements(G)[6]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;

/* Mazur's trick for all CM */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do
print(DiscardPlace(11,eps,Chi,new,i,1,10));
end for;

/* Second space */

print("Forms in Space 2^8*11:");
G:=DirichletGroup(2^8*11);                       
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
if i eq 6 then
print(DiscardPlace(11,eps,Chi,new,i,1,43));
else
print(DiscardPlace(11,eps,Chi,new,i,1,30));
end if;
end for;

print "Cannot discard the forms with parameter: [1, 2]";

/* Forms 1, 2 have CM by -8 */

for i in [1,2] do
print "The form", i, "has CM:", HasCM(new[i]);
end for;

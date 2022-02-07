load "Mazur42p.mg";


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

print("Forms with CM:");
print(CM);

/* Mazur's trick for forms without CM */

print("Primes obtained via Mazur's trick for non-CM forms:");
for i in [1..#new] do
if i notin CM then
print(DiscardPlace(11,eps,Chi,new,i,1,10));
end if;
end for;

/* Second space */

print("Forms in Space 2^8*11:");
G:=DirichletGroup(2^8*11);                       
eps:=Elements(G)[6]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print("Forms with CM:");
print(CM);

/* Mazur's trick for forms without CM */

print("Primes obtained via Mazur's trick for non-CM forms:");
for i in [1..#new] do
if i notin CM then
print(DiscardPlace(11,eps,Chi,new,i,1,10));
end if;
end for;

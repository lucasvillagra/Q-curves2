load "Mazur42p.mg";


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

print("Forms with CM:");
print(CM);

/* Mazur's trick for all forms */

print("Primes obtained via Mazur's trick for all forms:");
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

print("Forms with CM:");
print(CM);

/* Mazur's trick for forms without CM (and some with CM) */

for i in [1..#new] do
print(DiscardPlace(19,eps,Chi,new,i,1,20));
end for;

/* Mazur's trick for some forms with CM */

print("Primes obtained via Mazur's trick (lowering the level case) for forms 1 and 2:");
for i in [1,2] do                                 
print(MazurTrickMultiplicative(new,3,eps,[i]));
end for;

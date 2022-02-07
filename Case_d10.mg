load "Mazur42p.mg";

/* Character chi */

Chi:= function(p)
G:=DirichletGroup(2^8*5^2,CyclotomicField(4));                       
eps:=Elements(G)[10]; 
f:=order(KroneckerSymbol(-1,p)*eps(p)*KroneckerSymbol(p,5));
if KroneckerSymbol(10,p) eq 1 then
   f:=2*order(KroneckerSymbol(-1,p)*eps(p));
end if;
return f;
end function;

/* First space */
print("Forms in Space 2^8*5^2:");
G:=DirichletGroup(2^8*5^2,CyclotomicField(4));                       
eps:=Elements(G)[10]; 
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
print(DiscardPlace(10,eps,Chi,new,i,1,30));
end if;
end for;

/* Mazur's trick for forms with CM */

print("Primes obtained via Mazur's trick for CM forms:");
for i in [1..#new] do 
if i in CM then
print(DiscardPlace(10,eps,Chi,new,i,1,30));
end if;
end for;

/* Mazur's trick for forms with CM */

print("Primes obtained via Mazur's trick (lowering the level case) for CM forms:");
for i in CM do                                 
print(MazurTrickMultiplicative(new,3,eps,[i]));
end for;

/* Second space */

print("Forms in Space 2^9*5^2:");
G:=DirichletGroup(2^9*5^2,CyclotomicField(4));                       
eps:=Elements(G)[10]; 
M:=ModularSymbols(eps,2,1);
S:=NewSubspace(CuspidalSubspace(M));
new:=NewformDecomposition(S);
CM:=FormsWithCM(new);

print("Forms with CM:");
print(CM);

/* Mazur's trick for all the forms */

print("Primes obtained via Mazur's trick for all forms:");
for i in [1..#new] do
print(DiscardPlace(10,eps,Chi,new,i,1,20));
end for;

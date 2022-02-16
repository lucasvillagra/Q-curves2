/* Case d=10 */

load "Mazur42p.mg";

print "Case d=10:";

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

print "The dimension of the space of newforms is", Dimension(S);
print "There are", #new, "forms,", #CM, "of them having complex multiplication.";
print "Forms with CM:", CM;


/* Mazur's trick for all forms */

print("Primes obtained via Mazur's trick:");
for i in [1..#new] do  
if i in [3,4] then
print(DiscardPlace(10,eps,Chi,new,i,1,30) meet DiscardPlace(10,eps,Chi,new,i,37,37));
else
print(DiscardPlace(10,eps,Chi,new,i,1,30));
end if;
end for;

/* Mazur's trick for forms 21, 22 assuming that c is divisible by 3 */

print("Primes obtained via Mazur's trick (lowering the level case) for forms 21 and 22:");
for i in [21,22] do                                 
print(MazurTrickMultiplicative(new,3,eps,[i]));
end for;

/* If c is not divisible by 3*/

print "Cannot discard the forms with parameter: [21, 22]";

/* Forms 21, 22 have CM by -8  (then we use Proposition 3.4 of Ellenberg) */

for i in [21,22] do
print "The form", i, "has CM:", HasCM(new[i]);
end for;

/* Second space */

print("Forms in Space 2^9*5^2:");
G:=DirichletGroup(2^9*5^2,CyclotomicField(4));                       
eps:=Elements(G)[10]; 
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
print(DiscardPlace(10,eps,Chi,new,i,1,20));
end for;

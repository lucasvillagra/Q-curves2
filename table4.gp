\\ The case d=11.
\\ Define the square root of d.

q=Mod(t,t^2-11)

\\ Compute the squares:

Sqrs=[];forvec(X=[[0,15],[0,15]],Sqrs=concat(Sqrs,(Mod(1,16)*X[1]+X[2]*q)^2));Sqrs=Set(Sqrs);

\\ Define the generators

Gens=[q,1+2*q,-1]          

\\ Write down the norm hypothesis

Norms=[0,1,0,1]

\\ Take [q,1+2*q,5] if d=7 mod 8

d0=[1,3,5,7]

\\ Function verifying equation 10 for each value of d0

f(u)=vector(4,k,vector(length(Sqrs),j,2*u==d0[k]*Sqrs[j])!=vector(length(Sqrs))&&Norms[k])

\\ The loop

VV=[];forvec(X=[[0,3],[0,3],[0,1]],VV=concat(VV,[X]));
for(k=1,length(VV),if(f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3])!=[0,0,0,0],print(VV[k],"   ",f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3]))))


\\======================================================================
\\ The case d=15.
\\ Define the square root of d.

q=Mod(t,t^2-15)

\\ Compute the squares:

Sqrs=[];forvec(X=[[0,15],[0,15]],Sqrs=concat(Sqrs,(Mod(1,16)*X[1]+X[2]*q)^2));Sqrs=Set(Sqrs);

\\ Define the generators

Gens=[q,1+2*q,5]          

\\ Write down the norm hypothesis

Norms=[1,0,1,0]
d0=[1,3,5,7]

\\ Function verifying equation 10 for each value of d0

f(u)=vector(4,k,vector(length(Sqrs),j,2*u==d0[k]*Sqrs[j])!=vector(length(Sqrs))&&Norms[k])

\\ The loop

VV=[];forvec(X=[[0,3],[0,3],[0,1]],VV=concat(VV,[X]));
for(k=1,length(VV),if(f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3])!=[0,0,0,0],print(VV[k],"   ",f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3]))))

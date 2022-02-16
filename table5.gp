\\ The case d=2.

q=Mod(t,t^2-2)
Sqrs=[];forvec(X=[[0,15],[0,15]],Sqrs=concat(Sqrs,(Mod(1,16)*X[1]+X[2]*q)^2));Sqrs=Set(Sqrs);
Gens=[-1,5,1+q]          
Norms=[1,0,0,1]
d0=[1,3,5,7]
f(u)=vector(4,k,vector(length(Sqrs),j,2*u==d0[k]*Sqrs[j])!=vector(length(Sqrs))&&Norms[k])

\\ The loop. Add elements congrent to -1 mod p2^3

VV=[];forvec(X=[[0,1],[0,1],[0,7]],if(valuation(norm(Gens[1]^X[1]*Gens[2]^X[2]*Gens[3]^X[3]+1),2)>=3,VV=concat(VV,[X])));
for(k=1,length(VV),if(f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3])!=[0,0,0,0],print(VV[k],"   ",f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3]))))


\\======================================================================
\\ The case d=10.

q=Mod(t,t^2-10)
Sqrs=[];forvec(X=[[0,15],[0,15]],Sqrs=concat(Sqrs,(Mod(1,16)*X[1]+X[2]*q)^2));Sqrs=Set(Sqrs);
Gens=[-1,5,1+q]          
Norms=[0,1,1,0]
d0=[1,3,5,7]
f(u)=vector(4,k,vector(length(Sqrs),j,2*u==d0[k]*Sqrs[j])!=vector(length(Sqrs))&&Norms[k])

\\ The loop. Add elements congrent to -1 mod p2^3

VV=[];forvec(X=[[0,1],[0,1],[0,7]],if(valuation(norm(Gens[1]^X[1]*Gens[2]^X[2]*Gens[3]^X[3]+1),2)>=3,VV=concat(VV,[X])));
for(k=1,length(VV),if(f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3])!=[0,0,0,0],print(VV[k],"   ",f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3]))))

\\======================================================================
\\ The case d=6

q=Mod(t,t^2-6)
Sqrs=[];forvec(X=[[0,15],[0,15]],Sqrs=concat(Sqrs,(Mod(1,16)*X[1]+X[2]*q)^2));Sqrs=Set(Sqrs);
Gens=[-1,5,1+q]          
Norms=[0,0,1,1]
d0=[1,3,5,7]
f(u)=vector(4,k,vector(length(Sqrs),j,2*u==d0[k]*Sqrs[j])!=vector(length(Sqrs))&&Norms[k])

\\ The loop. Add elements congrent to -1 mod p2^3

VV=[];forvec(X=[[0,1],[0,1],[0,7]],if(valuation(norm(Gens[1]^X[1]*Gens[2]^X[2]*Gens[3]^X[3]+1),2)>=3,VV=concat(VV,[X])));
for(k=1,length(VV),if(f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3])!=[0,0,0,0],print(VV[k],"   ",f(Gens[1]^VV[k][1]*Gens[2]^VV[k][2]*Gens[3]^VV[k][3]))))


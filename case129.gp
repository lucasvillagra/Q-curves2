\\ Script to discard new[36] in PARI/GP using Mazur's trick with q=5,7.



\r case129.txt
\r case129a5.txt
\r case129a7.txt

v5=[-4, -2, 0, 2, 4]  \\ v5=ApCand(129,5);
w5=vector(length(v5),k,norm(-Mod(a5,P)-v5[k]));
w5=concat(w5,norm(Mod(a5,P)^2-36));
v7=[-14,-12,-6,4] \\ v7=ApCand(129,7);
w7=vector(length(v7),k,norm(Mod(a7,P)^2-v7[k]*(-1)-2*7*(-1)));
Primes=[];for(i=1,length(w5),for(j=1,length(w7),Primes=concat(Primes,factor(gcd(w5[i],w7[j]))[,1]~)))
Set(Primes)



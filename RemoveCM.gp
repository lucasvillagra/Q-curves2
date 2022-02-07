\\ Script to compute Ellenberg's Bound.

A(D,N,Q,x)=12/Pi*sqrt(D)/N*((log(D*N/Q)+1)*log(x^2*N/Q)+log(x^2*N/Q)^2/2)*exp(-2*Pi/x)+2*Pi/N*sqrt(Q/N)*sigma(N/Q,0)*log(x)*exp(-2*Pi/x);

B(D,N,Q,x)= A(D,N,Q,D^2*N/x)+if(Q==N,Pi/3*sqrt(D)/x*sigma(D,0)*exp(-2*Pi*x/N/D^2),0);

Bound(D,p,x)=(p-2)/(p-1)*exp(-2*Pi/x)-A(D,2*p^2,1,x)-A(D,2*p^2,p^2,x)-A(D,2*p,1,x)-A(D,2*p,p,x)-B(D,2*p^2,2*p^2,x)-B(D,2*p^2,2,x)-B(D,2*p,2*p,x)-B(D,2*p,2,x);

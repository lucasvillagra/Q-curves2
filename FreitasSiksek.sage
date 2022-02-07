# d is the constant of the equation.
# q and r are as in the statement of Theorem 1 of Freitas-Siksek.
# Apcand is the list of possibles values of a_q(E) (you can use "ApCand" function in "Mazur42p.mg" to compute it).

def FreitasSiksek(d,q,Apcand,r):

    K.<y>=NumberField(x^2-d);
    P.<X>=PolynomialRing(QQ,1); 

    eps=K.units()[0];
    epsc=eps.galois_conjugate();

    N1=epsc^12
    I1=K.ideal(N1-1)
    A1=norm(I1)

    N2=eps^12
    I2=K.ideal(N2-1)
    A2=norm(I2)

    S=prime_factors(lcm(A1,A2)) # primes dividing the constant B of the theorem

# We add primes dividing Res(P_q(X),X^{12r}-1) as in the Theorem
    pol=X^(12*r)-1
    for a in Apcand:
        p=X^2-a*X+norm(factor(K.ideal(q))[0][0])
        S.extend(prime_factors(p.resultant(pol)))

    return set(S)



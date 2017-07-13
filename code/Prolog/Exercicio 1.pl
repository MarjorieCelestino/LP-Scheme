pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary, gal).
mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

gerou(X, Y) :- pai(X, Y); mae(X, Y).
filho(X, Y) :- homem(X), gerou(Y, X).
filha(X, Y) :- mulher(X), gerou(Y, X).
irmao(X, Y) :- homem(X), (gerou(Z, X), gerou(Z, Y)), X\=Y.
irma(X, Y) :- mulher(X), gerou(Z, X), gerou(Z, Y), X\=Y.
tio(X, Y) :- (filho(Y, Z); filha(Y, Z)), irmao(X, Z).
tia(X, Y) :- (filho(Y, Z); filha(Y, Z)), irma(X, Z).
sobrinho(X, Y) :- homem(X), (tio(Y, X); tia(Y, X)).
sobrinha(X, Y) :- mulher(X), (tio(Y, X); tia(Y, X)).
primo(X, Y) :- homem(X), (tio(Z, X); tia(Z, X)), (filho(Y, Z); filha(Y, Z)).
prima(X, Y) :- mulher(X), (tio(Z, X); tia(Z, X)), (filho(Y, Z); filha(Y, Z)).
avô(X, Y) :- pai(X, Z), (pai(Z, Y); mae(Z, Y)).
avó(X, Y) :- mae(X, Z), (pai(Z, Y); mae(Z, Y)).
cunhada(X, Y) :- mulher(X), ((mae(Y, Z), (sobrinho(Z, X); sobrinha(Z, X))); (pai(Y, Z), (sobrinho(Z, X); sobrinha(Z, X)));
                  (tia(Y, Z), (filho(Z, X); filha(Z, X)));(tio(Y, Z), (filho(Z, X); filha(Z, X)))), not((irmao(X, Y); irma(X, Y))).
cunhado(X, Y) :- homem(X), ((mae(Y, Z), (sobrinho(Z, X); sobrinha(Z, X))); (pai(Y, Z), (sobrinho(Z, X); sobrinha(Z, X)));
                  (tia(Y, Z), (filho(Z, X); filha(Z, X)));(tio(Y, Z), (filho(Z, X); filha(Z, X)))), not((irmao(X, Y); irma(X, Y))).

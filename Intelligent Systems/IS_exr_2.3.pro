trevopasno(trevopasno,[zebra]). 
vseiadno(vseiadno,[maimuna,tigar]). 
vodno(vodno,[sharan,som]).  
vlechugo(vlechugo,[gushter,zmia]). 
ptica(ptica,[sova,papagal]).

bozajnik(V,X):-trevopasno(V,X);vseiadno(V,X). 
zemno(V,X):-vlechugo(V,X);ptica(V,X);bozajnik(V,X).  
jivotno(V,X):-vodno(V,X);zemno(V,X).

klas(A,C):-jivotno(C,L),member(A,L).
member(X,[X|_]):-!. 
member(X,[_|Y]):-member(X,Y). 

?-read(Otg,"Animal:"),klas(Otg,C),
window(_,_,_,"Animals",100,100,300,100),
S is print(C),text_out(100,20,S).

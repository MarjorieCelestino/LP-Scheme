usuario(user1).
usuario(user2).
usuario(user3).
usuario(user4).
usuario(user5).
usuario(user6).
usuario(user7).
usuario(user8).
usuario(user9).
usuario(user10).
usuario(user11).
usuario(user12).
usuario(user13).
usuario(user14).
usuario(user15).
usuario(user16).
usuario(user17).
usuario(user18).
usuario(user19).
usuario(user20).

interesse(lol).
interesse(dota).
interesse(bdo).
interesse(smite).
interesse(darksouls).
interesse(overwatch).
interesse(undertale).
interesse(wow).
interesse(doom).
interesse(minecraft).

grupo(rpg).
grupo(moba).
grupo(mmorpg).
grupo(simulacao).
grupo(terror).

segue(user1, user2).
segue(user1, user3).
segue(user2, user1).
segue(user3, user1).
segue(user4, user5).
segue(user5, user4).
segue(user6, user7).
segue(user7, user6).
segue(user8, user9).
segue(user9, user8).
segue(user10, user11).
segue(user11, user12).
segue(user12, user13).
segue(user13, user14).
segue(user14, user15).
segue(user15, user16).
segue(user16, user17).
segue(user17, user18).
segue(user18, user19).
segue(user19, user20).
segue(user20, user10).

gosta(user1, lol).
gosta(user1, dota).
gosta(user2, smite).
gosta(user2, dota).
gosta(user3, lol).
gosta(user3, dota).
gosta(user4, dota).
gosta(user4, smite).
gosta(user5, dota).
gosta(user5, smite).
gosta(user6, dota).
gosta(user6, smite).
gosta(user7, darksouls).
gosta(user7, bdo).
gosta(user8, darksouls).
gosta(user8, bdo).
gosta(user9, darksouls).
gosta(user9, bdo).
gosta(user10, darksouls).
gosta(user10, bdo).
gosta(user11, bdo).
gosta(user11, overwatch).
gosta(user12, bdo).
gosta(user12, overwatch).
gosta(user13, bdo).
gosta(user13, overwatch).
gosta(user14, minecraft).
gosta(user14, wow).
gosta(user15, minecraft).
gosta(user15, wow).
gosta(user16, wow).
gosta(user16, undertale).
gosta(user17, undertale).
gosta(user17, bdo).
gosta(user18, doom).
gosta(user18, minecraft).
gosta(user19, doom).
gosta(user19, minecraft).
gosta(user20, undertale).
gosta(user20, doom).

contem(rpg, user1).
contem(rpg, user2).
contem(rpg, user3).
contem(rpg, user4).
contem(rpg, user5).
contem(moba, user5).
contem(moba, user6).
contem(moba, user7).
contem(moba, user8).
contem(moba, user9).
contem(mmorpg, user9).
contem(mmorpg, user10).
contem(mmorpg, user11).
contem(mmorpg, user12).
contem(mmorpg, user13).
contem(simulacao, user13).
contem(simulacao, user14).
contem(simulacao, user15).
contem(simulacao, user16).
contem(simulacao, user17).
contem(terror, user17).
contem(terror, user18).
contem(terror, user19).
contem(terror, user20).
contem(terror, user1).


amigo(X, Y) :- segue(X, Y), segue(Y, X).
pertence(X, Y) :- contem(Y, X).
interessesAmigos(X, Y) :- amigo(X, Z), gosta(Z, Y).
retornaAmigos(X, Y, Z) :- amigo(X, Z), pertence(Z, Y).
retornaInteresses(X, Y) :- pertence(Z, X), gosta(Z, Y).

relacionesValidas:: [(String, String)] -> Bool
relacionesValidas [] = True
relacionesValidas (r:rs)
    |fst r /= snd r && not (seRepite r rs) && not (seRepite (snd r, fst r) rs) = relacionesValidas rs
    |otherwise = False

seRepite:: (String, String) -> [(String, String)] -> Bool
seRepite rel [] = False
seRepite rel (r:rs)
    |fst rel == fst r && snd rel == snd r = True
    |otherwise = seRepite rel rs

personas:: [(String, String)] -> [String]
personas [] = []
personas (p:ps)
    |fst p == snd p && fst p == "" = personas ps
    |fst p == snd p = fst p : personas (quitarInstancias (fst p) ps)
    |fst p == "" = snd p : personas (quitarInstancias (snd p) ps)
    |snd p == "" = fst p : personas (quitarInstancias (fst p) ps)
    |otherwise = fst p : snd p : personas (quitarInstancias (fst p) (quitarInstancias (snd p) ps))

quitarInstancias:: String -> [(String, String)] -> [(String, String)]
quitarInstancias per [] = []
quitarInstancias per (p:ps)
    |per == fst p && per == snd p = ("","") : quitarInstancias per ps
    |per == fst p = ("", snd p) : quitarInstancias per ps
    |per == snd p = (fst p, "") : quitarInstancias per ps
    |otherwise = p: quitarInstancias per ps

amigosDe :: String -> [(String, String)] -> [String]
amigosDe per [] = []
amigosDe per (a:as)
    |per == fst a = snd a : amigosDe per as
    |per == snd a = fst a : amigosDe per as
    |otherwise = amigosDe per as

personaConMasAmigos :: [(String, String)] -> String
personaConMasAmigos [] = ""
personaConMasAmigos rels = fst(maximo(amigosPorPersona(personas rels) rels))

amigosPorPersona:: [String] -> [(String, String)] -> [(String, Int)]
amigosPorPersona [] rels = []
amigosPorPersona (p:ps) relaciones = (p, contar (amigosDe p relaciones)): amigosPorPersona ps relaciones

contar:: [String] -> Int
contar [] = 0
contar (p:ps) = 1+contar ps

maximo:: [(String, Int)] -> (String, Int)
maximo[x] = x
maximo (p:ps)
    |snd p>=snd(head ps) = maximo (p:tail ps)
    |otherwise = maximo ps
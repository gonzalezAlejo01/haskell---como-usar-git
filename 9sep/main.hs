import GHC.Builtin.Names (raiseDivZeroIdKey)
--ESPECIFICAR LOS QUE PIDA--
--guia 4
fibonacci:: Int -> Int
fibonacci x
    | x <= 1 = x --o usar pattern matching
    | otherwise = fibonacci (x-1) + fibonacci (x-2)


parteEntera:: Float -> Integer
parteEntera x 
    | x >= 1 = 1 + parteEntera (x-1)
    | otherwise = 0

esDivisible:: Integer -> Integer -> Bool
esDivisible x y
    | x - y > 0 = esDivisible (x-y) y
    | x - y == 0 = True
    | x - y <= 0 = False

sumaImpares:: Integer -> Integer
sumaImpares x 
    | x>=1 = 1+2*(x-1)+ sumaImpares (x-1)
    | otherwise = 0

medioFact:: Integer -> Integer
medioFact x
    | x>=0 = x*medioFact (x-2)
    |otherwise = 1

iesimoDigitoMal:: Integer -> Integer -> Integer --lee bien la consigna, es al reves (x=1234, y=1 -> 1)
iesimoDigitoMal x y 
    | y>=2 = iesimoDigitoMal (div x 10) (y-1) 
    | otherwise = mod x 10

--parentesis maestro, estuviste 20 minutos por un parentesis
iesimoDigito:: Integer -> Integer -> Integer
iesimoDigito x y = mod (div x (10^(cantDigitos x-y))) 10

cantDigitos:: Integer -> Integer
cantDigitos x 
    | x>=10 = 1+cantDigitos (div x 10)
    | otherwise = 1

esCapicua:: Integer -> Bool
esCapicua x 
    | x < 10 = True
    | x < 100 = div x 10 == mod x 10
    | otherwise = iesimoDigito x 1 == mod x 10 && esCapicua (div ultDig 10)
    where ultDig = mod x (10^(cantDigitos x-1))

todosDigitosIguales:: Integer -> Bool
todosDigitosIguales x 
    | x<10 = True
    | mod x 10 == mod (div x 10) 10 = todosDigitosIguales(div x 10)
    | otherwise = False

sumaDigitos:: Integer -> Integer
sumaDigitos x 
    | x<10 = mod x 10
    | otherwise = mod x 10 + sumaDigitos (div x 10)

--ejs 10, 11--

raizD2Aprox:: Integer -> Float
raizD2Aprox x 
    | x==1 = 1
    | otherwise = 2+(1/raizD2Aprox(x-1)) --terminar, falta hacer -1--

--el 13 se hace igual, ver como iterar mejor que con funcion auxiliar: ah no, era con func auxiliar parece
--el 15 tambien
sumaPotencias:: Integer -> Integer -> Integer -> Integer --especificar
sumaPotencias 1 y z = 1
sumaPotencias x 1 1 = x^2
sumaPotencias x 1 z = aux x 1 z
sumaPotencias x y z = aux x y z+sumaPotencias x (y-1) z

aux:: Integer-> Integer-> Integer-> Integer
aux x 1 z = x^(z+1)
aux x y 1 = x^(y+1)
aux x y z = x^(y+z) + aux x y (z-1)

menorDivisor:: Integer-> Integer
menorDivisor x = x --no se puede sin funcion auxiliar?


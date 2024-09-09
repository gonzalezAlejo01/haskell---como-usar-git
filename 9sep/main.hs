import GHC.ResponseFile (escapeArgs)
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

--restarle digitoMasGrande*10^cantPosiciones, dps hacer div 10--
test x = (mod x 10^((cantDigitos x)-1))

esCapicua:: Integer -> Bool
esCapicua x 
    | x < 10 = True
    | x < 100 = div x 10 == mod x 10
    | otherwise = iesimoDigito x 1 == mod x 10 && esCapicua (div (x-mod x 10^(cantDigitos x-1)) 10) --probar en test--

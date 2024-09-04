import GHC.Plugins (disjointNameEnv)
todoMenor:: (Float, Float) -> (Float, Float) -> Bool
todoMenor (xa, ya) (xb, yb) 
    | xa<=xb && ya<=yb = True
    | otherwise = False

type Punto2d = (Float, Float)
type Coord3d = (Float, Float, Float)

posPrimerPar :: (Integer, Integer, Integer) -> Integer
posPrimerPar (x,y,z) 
    | mod x 2 == 0 = 0
    | even y = 1 --nomas por los loles, no usar even q te cagan a pedos--
    | mod z 2 == 0 = 0
    | otherwise = 4 --req es naturales, mira la consigna nabo--

bisiesto :: Integer -> Bool
bisiesto x 
    | (mod x 100 == 0 && mod x 400 /= 0) || mod x 4 /= 0 = False
    | otherwise = True
    -- |mod x 100 == 0 = mod x 400 == 0-- (if x%100==0 return x%400==0)
    -- |otherwise = mod x 4
    -- |not (mod x 4 == 0 && (mod x 100==0 && mod x 400 == 0)) da morgan
    -- |otherwise true 
absoluto:: Float -> Float
absoluto x 
    | x >= 0 = x
    |otherwise = -1*x
distanciaManhattan:: Coord3d -> Coord3d -> Float
distanciaManhattan (xa,ya,za) (xb,yb,zb) = absoluto(xa-xb)+absoluto(ya-yb)+abs(za-zb)


--ver alternativas
sumaUltimosDosDigitos :: Integer -> Integer
sumaUltimosDosDigitos x = unidad + div decena 10 
    where unidad = mod x 10
          decena = mod x 100 - unidad

comparar:: Integer -> Integer -> Integer
comparar x y | sumaUltimosDosDigitos x < sumaUltimosDosDigitos y = 1
    | sumaUltimosDosDigitos x > sumaUltimosDosDigitos y = -1
    | sumaUltimosDosDigitos x == sumaUltimosDosDigitos y = 0

{-f4: dados dos numeros reales, devuelve el promedio
    problema promedio(x: R, y: R):R ->{
        requiere: {True}
        asegura: promedio x y
}
f5: dada una dupla de numeros reales, calcula el promedio
    problema promedio((x, y): RxR):R ->{
        requiere: {True}
        asegura: {promedio (x,y)}    
    }
f5 usa tuplas, f4 numeros. f5 puede emplear funciones parciales (??)
-}
doubleMe x = x + x

mult  :: Int -> Int -> Int
mult x y = x * y

-- aaa --

-- ej1--

funcF :: Int -> Int
funcF x | x == 1 = 8
    |x == 4 = 131
    |x == 16 =16

funcG :: Int -> Int
funcG 8 = 16
funcG 16 = 4
funcG 131 = 1

funcFOG :: Int -> Int
funcFOG x = funcF(funcG x)

funcGOF :: Int -> Int
funcGOF x = funcG(funcF x)

--ej2--
maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z 
    |x>y && x>z = x
    |y>z = y
    |otherwise = z

sumDist :: Int -> Int -> Int -> Int
sumDist x y z
    |x==y && y==z = 0
    |x==y = z
    |x==z = y
    |y==z = x
    |otherwise = x+y+z

digitoUnidades :: Int -> Int
digitoUnidades x = mod (abs x) 10 --otra forma: (abs x) `mod` 10--

digitoDecenas :: Int -> Int
digitoDecenas x = digitoUnidades(div x 10) --div (mod x 10) 10--
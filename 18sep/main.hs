import GHC.CmmToAsm.AArch64.Instr (x1, xzr)

{- esto es cualquier cosa
reverso:: [Integer] -> [Integer]
reverso (x:xs)
    | x == getLast
-- func aux pop last -> if tail xs = [] return x

getLast:: [Integer] -> Integer
getLast x 
    | tail x == [] = head x
    | otherwise = getLast (tail x)
popLast:: [Integer] -> [Integer]
popLast (x:xs)
    | tail xs == [] = [x] --null tail xs = x
    | otherwise = x:popLast xs
-}

reverso:: [t] -> [t] --(Eq t) => [t] -> [t] si hace falta hacer comparaciones entre elems
reverso (x:xs) 
    |null xs = [x]
    |otherwise = reverso xs ++ [x]

todosDistintos:: (Eq t) => [t] -> Bool
todosDistintos (x:xs)
    |null xs = True
    |not (noSeRepiteN x xs) = False
    |otherwise = todosDistintos xs
noSeRepiteN::(Eq t) => t -> [t] -> Bool
noSeRepiteN n x
    |null x = True
    |n==head x = False
    |n/=head x = noSeRepiteN n (tail x)

quitarTodos:: (Eq t) => t -> [t] -> [t]
quitarTodos x xs 
    | null xs = []
    | x==head xs = quitarTodos x (tail xs)
    | otherwise = head xs : quitarTodos x (tail xs)

quitar:: (Eq t) => t -> [t] -> [t]
quitar n xs
    | null xs = []
    | n == head xs = tail xs
    | otherwise = head xs : quitar n (tail xs)

--eliminar repetidos

maximo:: [Integer] -> Integer
maximo (x:xs)
    | null xs = x
    | x>=head xs = maximo (x:tail xs)
    | otherwise = maximo xs

ordenar:: [Integer] -> [Integer]
ordenar (x:xs)
    |null xs = [x]
    |otherwise = ordenar(quitar (maximo (x:xs)) (x:xs)) ++ [maximo (x:xs)] -- : (maximo (x:xs))

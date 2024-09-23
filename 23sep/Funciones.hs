--nom archivo == module nombre, si o si empieza c/ mayus

module Funciones where
    fib:: Int-> Int
    fib 0=0
    fib 1=1
    fib n = fib(n-1)+fib(n-2)

    --expectListProximity --> a=b si a-b<margenError  (va a estar disponible en el tp?)
    -- practicar...
    -- /---\ |----  /--- |      |
    -- |   | |     |     |      |
    -- |--/  |---  |     |      |
    -- |  \  |     |     \      /
    -- |   \ |____  \___  \____/
    --replantear problemas -> evitar funcs auxiliares de mas
    genStock:: [String] -> [(String, Int)] --mejor forma: dos funciones, cantApariciones(x prods), quitarInstancias(x prods) genStock (p:ps) = cantApariciones(p p:ps):genStock(quitarInstancias p (p:ps))
    genStock lista = alt lista []

    alt:: [String] -> [(String, Int)] -> [(String, Int)]
    alt [] list = list
    alt (p:ps) list
        |inList p list = alt ps (sumStock p list)
        |otherwise = alt ps (list++[(p, 1)])
        
    
    inList:: String -> [(String, Int)] -> Bool
    inList prod list
        |null list = False
        |prod == fst (head list) = True
        |otherwise = inList prod (tail list)

    sumStock:: String -> [(String, Int)] -> [(String, Int)]
    sumStock prod list
        |null list = []
        |prod == fst(head list) = (fst(head list), snd(head list)+1) : tail list
        |otherwise = head list : sumStock prod (tail list)

    stockDeProducto:: [(String, Int)] -> String ->Int
    stockDeProducto list prod
        |null list = 0
        |fst(head list) == prod = snd(head list)
        |otherwise = stockDeProducto (tail list) prod

    dineroEnStock:: [(String, Int)] -> [(String, Int)] -> Float
    dineroEnStock [] (y:ys) = 0
    dineroEnStock (x:xs) (y:ys) = fromIntegral(snd x)* getPrecio (fst x) (y:ys) + dineroEnStock xs (y:ys)
    
    getPrecio:: String -> [(String, Int)] -> Float
    -- getPrecio p [] = 0??
    getPrecio p (x:xs)
        |fst x == p = fromIntegral(snd x)
        |otherwise = getPrecio p xs
import Test.HUnit
import Funciones

run = runTestTT testsFibo --"alias" de runTestTT test
testsFibo = test [
    "caso base: fib 0" ~: fib 0 ~?= 0,
    "caso base: fib 1" ~: fib 1 ~?= 1,
    "caso recursivo: fib 2" ~:fib 2 ~?= 1  
    ] --tiene que estar tabulado

--runTestTT testsFibo
import math
#python tutor
#desde terminal: python/python3 (dep del instalado) -> import nombreArchivo (sin ext) -> nomArchivo.nomFunc(params) -> exit()
#DECLARAR RETURN TYPE

def imprimirHolaMundo():
    print("Hola mundo!")

def imrpimirVerso():
    print("...")

def raizDe2():
    return round( math.sqrt(2), 4)    

def factDeDos():
    factChipeado: int=1
    for i in range (1,2):
        factChipeado+=factChipeado*i
    return factChipeado

def perimetroRUno():
    return math.pi*2*1

def imprimirSaludo(saludo:str):
    print("Hola "+saludo)

def raizCuadradaDe(nro:int):
    return sqrt(nro)

def fahrenheitACelsius(temp_far:float):
    return (temp_far-32)*5/9

def imprimirDosVeces(txt:str):
    print(txt*2)

def esMultiploDe(n:int,m:int):
    return n%m==0

def esPar(n:int):
    return esMultiploDe(n,2)

def cantPizzas(coms:int,minCPorc:int):
    return math.ceil(coms*minCPorc/8)

def algunoEsCero(n:int,m:int):
    return n==0 or m==0
    
def ambosCero(n:int,m:int):
    return n==0 and m==0

def esNombreLargo(nom:str):
    return len(nom)>=3 and len(nom)<=8

def esBisiesto(n:int):
    return n%400==0 or (n%100!=0 and n%4==0)

def pesoPino(l:int):
    if l>300:
        return 300*3+(l-300)*2
    else:
        return l*3

def esPesoUtil(n:int):
    return n<=1000 and n>=400

def sirvePino(l:int):
    return esPesoUtil(pesoPino(l))

#sin comp de funciones?

def devDobleSiPar(n:int):
    if n%2==0:
        return 2*n # return 2*n if n%2==0 else n
    else:
        return n

def dobleSiParSiNoNext(n:int):
    if n%2==0:
        return 2*n
    else:
        return n+1

def DSMTTSMN(n:int): #doble si mult 3, triple si mult 9
    if n%9==0:
        return 3*n
    elif  n%3==0:
        return 2*n

def lindoNombre(nom:str):
    if len(nom)>=5:
        return "nombre largo"
    else:
        return "nombre corto"

def elRango(n:int):
    if n<5:
        return "<5"
    elif n>10 and n<20:
        return "entre 10 y 20"
    elif n>20:
        return ">20"

def jodaONo(s:str,e:int):
    if e<18:
        return "joda"
    elif e>=65 and s=="h" or e>=60 and s=="m":
        return "joda"
    else:
        return "pala"

def UAD():
    cont: int=1
    while cont<=10:
        print(cont)
        cont+=1

def PDAC():
    cont: int=10
    while cont<=40:
        if cont%2==0:
            print(cont)
        cont+=1

def ECO():
    cont: int=1
    while cont<=10:
        print("eco")
        cont+=1

def CR(n:int):
    while n>=1:
        print (n)
        n-=1

def VT(n:int,m:int):
    while n>=m:
        print ("act: " + n)
        n-=1

def VP(n:int):
    while n>-384:
        if n-10>-384:
            print (n)
        n-=20
    print(n)
#todo: con for 

#dec sim: x: int= 5 y:int=7 x=x+y ??

#9)1:1, 2, 3 g=3?
#9)2:2, 2, 2
#9)3: ???
#9)4: prob: rt (x:int, g:int): int req: true asegura: x+(g+1)
#     prob: ro(x:int, g:int):int req: true modifica: g inout? asegura: x+(g@pre+1)  
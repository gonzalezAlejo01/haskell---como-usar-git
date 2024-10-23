#python 3.8 o inf: importar modulo para tipado de listas (nombreLista(int): valor?) 
#DECLARAR TIPOSSSS... RESPETAR NOMBRESSSSS
#OJO CON REFERENCIAS VS COPIAS, DEBUGGEAR
import math
from typing import List
lisGlob=[1,2,3,4,5]

def pertenece(lis, num: int):
    for i in range (0,len(lis),1): #0, no 1
        if lis[i]==num:
            return True
    return False

def perteneceDos(num):
    for i in range (0,len(lisGlob),1):
        if lisGlob[i]==num:
            return True
    return False

def perteneceFacil(num):
    for i in lisGlob:
        if i==num:
            return "esta"
    return "no esta"

def divideATodos(l, num)->bool:
    for i in l:
        if i%num!=0:
            return False
    return True

def sumaTotal(l:List[int])->int:
    tot:int=0
    for i in l:
        tot+=i
    return tot

def maximo(l:List[int])->int:
    maxTemp:int=l[0]
    for i in range(1,len(l),1):
        if maxTemp<l[i]:
            maxTemp=l[i]
    return maxTemp

def minimo(l:List[int])->int:
    minT:int=l[0]
    for i in range(1,len(l),1):
        if minT>l[i]:
            minT=l[i]
    return minT

def ordenados(l:List[int])->bool:
    for i in range(1,len(l),1):
        if l[i-1]>=l[i]:
            return False
    return True

def pos_maximo(l:List[int])->int:
    if l==[]:
        return -1
    maxT:int=maximo(l)
    for i in l:
        if i==maxT:
            return i
        
def pos_minimo(l:List[int])->int:
    if l==[]:
        return -1
    minT:int=minimo(l)
    for i in l:
        if i==minT:
            return i
        
def palsLargas(l:List[str])->bool:
    for i in l:
        if len(i)>7:
            return True
    return False

def esPalindromo(l:List[str])->bool:
    for i in range(0,math.ceil(len(l)/2)):
        if l[i]!=l[len(l)-i-1]:
            return False
    return True

def tresIgCons(l:List[int])->bool:
    cont:int=0
    for i in range(1,len(l),1):
        if cont==3:
            return True
        if l[1]==l[i-1]:
            cont+=1
        else:
            cont=0
    return False

#paja de hacer el resto
def CerosEnPosicionesPares(l:List[int])->List[int]: #inout: recibe, modifica, devuelve
    for i in range(len(l),2):
        l[i]=0
    return l

def CerosEnPosicionesParesDos(l:List[int])->List[int]: #el parametro solo se lee, no es modificable
    res:List[int]=l.copy() #copia los valores de s, res=l crea una referencia a l
    for i in range(len(l),2):
        res[i]=0
    return res

def pertenece_a_cada_uno_version_1(l:List[List[int]], n:int, res:bool)->bool: #VER INTERACCIONES ENTRE VARIABLES GLOBALES, REFERENCIAS, ETC
    res.clear()
    for i in l:
        res.append(pertenece(l, n))
rta=[False, True, False]
s=[[1,2],[3,6],[5,4]]
pertenece_a_cada_uno_version_1(s,1, rta)
print("a")
    #NO PONER RETURN RES, ES OUT Y ESTA ENTRE LOS PARAMETROS (LEER ESPECIFICACION; NO HAY :PARAMETROSALIDA)
#func borrar vocales: no se pueden borrar elementos por indice, armar array secundario

'''
hacer var=global crea una referencia de global
hacer var=global.copy() duplica los valores de global a var
hacer var.clear() con var pasado como parametro de una global borra tambien el global? probar
que pasa si modifican parametros recibidos en base a vars globales?
aprende a debugear
pasajes por referencia/copia, pasaje de variables preexistentes, limpiar, etc IMPORTANTE
'''

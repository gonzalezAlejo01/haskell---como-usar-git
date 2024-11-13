from queue import Queue as Cola
from math import floor

# Ejercicio 1
def gestion_notas(notas_estudiante_materia: list[tuple[str, str, int]]) -> dict[str, list[tuple[str,int]]]:
    res:dict[str, list[tuple[str,int]]]={}
    for i in notas_estudiante_materia:
        found:bool=False
        for j in res.keys():
            if j==i[0]:
                found=True
                listTemp:list[tuple[str,int]]=res[j]
                listTemp.append((i[1],i[2]))
                res[j]=listTemp
                break
        if not found:
            res[i[0]]=[(i[1],i[2])]
    return res

# Ejercicio 2
def cantidad_digitos_pares(numeros: list[int]) -> int:
    cont:int=0
    numerosCopia:list[int]=numeros.copy()
    for i in numerosCopia:
        while i>1:
            if i%2==0 and i%10!=0:
                cont+=1
            i=floor(i/10)
    return cont
cantidad_digitos_pares
# Ejercicio 3 VER LO DE MEMORIA VS COPIA
def reordenar_cola_primero_pesados(paquetes: Cola[tuple[str,int]], umbral:int) -> Cola[tuple[str,int]]:
    copiaPaquetes:Cola[tuple[str,int]]=Cola()
    listaPaquetes:list[tuple[str,int]]=[]
    cMen:Cola[tuple[str,int]]=Cola()
    res:Cola[tuple[str,int]]=Cola()
    while not paquetes.empty():
        paqTemp:tuple[str,int]=paquetes.get()
        listaPaquetes.append(paqTemp)
        copiaPaquetes.put(paqTemp)
    for i in listaPaquetes:
        if i[1]>umbral:
            res.put(i)
        else:
            cMen.put(i)
    while not cMen.empty():
        res.put(cMen.get())
    return res

# Ejercicio 4
def matriz_pseudo_ordenada(matriz: list[list[int]]) -> bool:
    minAnt:int=matriz[0][0]
    for i in range(1,len(matriz[0])):
        if minAnt>i:
            minAnt=i
    for i in range(1,len(matriz)):
        minimo:int=matriz[i][0]
        for j in matriz[i]:
            if j<minimo:
                minimo=j
        if minimo<minAnt:
            return False
        else:
            minAnt = min
    return True

print(matriz_pseudo_ordenada([[1,2,3],[4,5,6],[7,8,9]]))
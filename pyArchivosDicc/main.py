"""open(dir(relativa o completa),modo(r,w,a,x,etc),encoding(opc?)) VER CUALES ESTAN PERMITIDOS?
ABRIR ARCHIVO CON w LO VACIA, EN ESE MOMENTO, LA ESCRITURA NO SE SOBREESCRIBE SALVO QUE SE ABRA DE VUELTA
archivo.read() --> string
archivo.readline --> lee linea, la corta del archivo? PROBAR
archivo.readlines(canLineas) --> array de strings, c/u es una linea, default: todo el archivo
archivo.write("txt, para una linea sola")
archivo.writelines("multiples strings, aclarar endline?")
ACORDATE DEL ARCHIVO.CLOSE()
split(), default: cualquier blank (" ", "\n")"""



from typing import List
archivo = open("texto.txt","r")

def agruparPorLongitud():
    #menos bolita, pero menos optimo?: split en espacios y endls
    cont:int=0
    dictLongs:dict={}
    for i in archivo.read():
        print("el i: "+i)
        if i==" " or i=="\n":
            print("entra")
            #hacer for para ver keys
            if cont in dictLongs.keys():
                dictLongs[cont]=dictLongs[cont]+1
            else:
                dictLongs[cont]=1
            cont=0
        else:
            cont+=1
    print(dictLongs)

def contarLineas(nombre_archivo:str)->int:
    archivo=open(nombre_archivo,"r")
    cantLineas=len(archivo.readLines)
    archivo.close()
    return cantLineas

def clonarSinComentarios(nombre_archivo_entrada:str,nombre_archivo_salida:str):
    archivoLeer=open(nombre_archivo_entrada,"r")
    lineas:List[str]=archivoLeer.readlines()
    archivoLeer.close()
    archivoEscribir=open(nombre_archivo_salida,"w")
    for i in lineas:
        aEscribir:bool=True
        for j in i:
            if j=="#" or j==" ":
                aEscribir=False
                break
            else:
                break
        if aEscribir:
            archivoEscribir.write(i)

def palabra_mas_frecuente(nombre_archivo:str)->str:
    aparicionesPalabras:dict={}
    archivo=open(nombre_archivo,"r")
    for i in archivo.readlines():
        for j in i.split():
            estaEnDict:bool=False
            for k in aparicionesPalabras.keys():
                if k==j:
                    estaEnDict=True
                    aparicionesPalabras[k]=aparicionesPalabras[k]+1
            if estaEnDict

palabra_mas_frecuente("texto.txt")
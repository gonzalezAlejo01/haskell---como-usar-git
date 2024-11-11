#importar archivos: from archivo import funcion o directamente import archivo
#self.assertN: para comprobar casos, hay una bocha (assertEqual,assertGreater, etcetc)
#mas o menos como hunit, llamar funcion, pasarle parametros, poner el res a comparar, un nombre descriptivo
#ni idea que onda lo de abajo, ver lo de name, como llamar tests, y lo de verbosity
#hay ejemplos en el campus, miralos
#instalar coverage (ver diapos) para ver res del testing?
#__name__ es el nombre del archivo
#coverage html devuelve info
#el nombre del archivo tiene que empezar con "test", no caps, no nada antes, test literal seguido de lo que quiera
#lo mismo para funciones dentro de la clase
#coverage run --include=arch.py (no hace falta) -m unittest (que hace -m, probar que mas hacer, ver ppt)

from temp import funcion

import unittest

class FuncionesTest(unittest.TestCase):
    def test_asi(self):
        self.assertEqual(funcion(3),4) #self.assert(func(params),resEsperado,"nombre test")


if __name__=="__main__":
    print("entra")
    unittest.main(verbosity=2)


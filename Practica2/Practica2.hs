{-Funcion: sayHello
Descripcion: MUestra texto de acuerdo a una cadena
Uso: sayHello Sofia -> "Hola Sofia, bienvenida"-}

sayHello ::  String -> IO ()
sayHello x = putStrLn ( "Hola" ++ x ++ "Hola como estas?")

{- Funcion triple
    Descripcion: Devuelve el triple de un numer
    Uso: triple 3=9 
-}

triple :: Int -> Int
triple x = x^3

{- Función: cuadrado
   Descripción: Devuelve el cuadrado de un número
   Uso: cuadrado 4 = 16
-}
cuadrado :: Int -> Int
cuadrado x = x^2

-- Si hoy es viernes q dia fue hace 12 dias

{-Funcion> days_ago 
    Descripcion: Si hoy es viernes q dia fue hace 12 dias
    Uso days_ago 12 = 0 (Domingo)
-}

days_ago :: Int -> Int
days_ago x = mod (x - 12) 7


{-
  Función: esParBool
  Descripción: Verifica si un entero es par o no
  Uso: esParBool 89 = False
-}

esParBool :: Int -> Bool 
esParBool x =
  if x `mod` 2 == 0
  then True
  else False
  
{-
        Funcion= reconversion 
        Descripcion= Quitarle 3 ceros al valor final 
        Uso:Moneda Mexicana 
-}

reconversion :: Fractional a => a -> a
reconversion x = x / 1000

{-
	Funcion: cashback
	Descripcion: calcular el cashback obtenido de una tarjeta de credito con el 10% de puntos 
	Uso: dinero obtenido por compras 
-}

cashback :: Double -> Double
cashback x = 10*x /100 

{- 
	Funcion: cashbackMonto
	Descripcion: cashback en forma de puntos en lugar de dinero se considera que cada punto tiene valor de $0.10 
	Uso: recibir una cantidad de puntos y devuelva lo equivalente en dinero 
-}

cashbackMonto :: Double -> Double 
cashbackMonto x = x*0.10
 
{- 
	Funcion: minutosHoras 
	Descripcion: los minutos hacen su conversion a horas 
	Uso : conversion de minutos 
-}

minutosHoras :: Int -> String
minutosHoras x = " son " ++ show (div x 60) ++ " horas " ++ show (mod x 60) ++ " minutos "

{- 
	Funcion : esEstafa
	Descripcion : Determina si una transaccion es una estafa del "cambio de billete"
	Uso: devuelve 'True' si el pago fue valido, sino en 'False'
-}

esEstafa :: (Ord a, Num a) => a -> a -> a -> a -> Bool
esEstafa costo billete cambio devuelto =
     billete > costo
  && cambio == billete - costo
  && devuelto < cambio

{- 
	Funcion: esDescendente 
	Descripcion : Determina si los 4 numeros que fueron ingresados fue en orden descendente
	Uso: devolver true si es descendente 
-}

esDescendente :: (Ord a, Num a) => a -> a -> a -> a -> Bool
esDescendente x y z w = x > y && y > z && z > w

{- 
	Funcion : imc
	Descripcion:  Calcular el indice de masa corporal
	Uso : Calcula el IMC y devolver su clasificacion 
-}

imc :: Double -> Double -> String
imc kg altura 
  | indice < 18.5 = "bajo"
  | indice < 25   = "normal"
  | indice < 30   = "sobrepeso"
  | otherwise     = "obesidad" 
  where 
    metros = if altura > 3 then altura / 100 else altura
    indice = kg / (metros * metros)

{-
	Funcion: hipotenusa
	Descripcion: calcula la hipotenusa de un triangulo rectangulo a partir de su base y su altura, usando el teorema de pitagoras.
	Uso: Devuelve la longitud de la hipotenusa

-}

hipotenusa :: Double -> Double -> Double 
hipotenusa b h = sqrt (b^ 2 + h ^ 2)

{-
	Funcion :pendiente 
	Descripcion : calcula la pendiente de la recta que pasa por dos puntos
	Uso: calcular la pendiente d la recta 
-}

pendiente :: (Double, Double) -> (Double, Double) -> Double
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

{- 
	Funcion : distanciaPuntos
	Descripcion : Calcular la distancia ente dos puntos 
	Uso: distancias
-}

distanciaPuntos :: (Double, Double) -> (Double, Double) -> Double
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)


main :: IO ()
main = do
  sayHello "Sofia"
  putStrLn ("Triple de 57:" ++ show (triple 57))
  putStrLn ("Cuadrado de 43:" ++ show (cuadrado 43))
  putStrLn ("Si hoy es viernes hace 12 días fue " ++ "Domingo (" ++ show (days_ago 5) ++ ")")
  putStrLn ("4577 es" ++  " impar (" ++  show (esParBool 4577) ++ ")") 
 

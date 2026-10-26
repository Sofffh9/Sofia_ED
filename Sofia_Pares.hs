module Sofia_Pares (esPar, esParBool, esParBit, esPrimo, mensajePrimo, sonCoprimos)  where 

import Data.Bits ((.&.))
{- 
        Funcion :esPar
        Descripcion: Verifica si un numero es par, vista en clase 
        Uso esPar 5 = 5 es impar
-}

esPar :: Int -> IO()
esPar x =
  if x `mod` 2 == 0
  then putStrLn (show x ++ "si es par")
  else putStrLn (show x ++ "es impar")

{- 
        Funcion: esParBool 
VISTA EN CLASE 
-}

esParBool :: Int -> Bool
esParBool x =
    if x `mod` 2 == 0 
    then True 
    else False

{- 
	Funcion: esParBit 
	Descripcion: un entero es par si su bit menos significativo es 0 
-}

esParBit :: Int ->Bool 
esParBit x = x .&. 1 == 0

{- 
	Funcion: esPrimo 
	Descripcion : Verifica si un numero es Primo 
	Uso esPrimo  2 = 2 es par
-}

esPrimo :: Int -> Bool 
esPrimo n 
  |n < 2      = False 
  | otherwise = null [d | d <- [2 .. n - 1], n `mod` d == 0]

--mensajePrimo es para mostrar o no :P

mensajePrimo :: Int -> IO ()
mensajePrimo n =
  if esPrimo n 
  then putStrLn (show n ++ "es Primo")
  else putStrLn (show n ++ "es Impar")
 
{- 
	Funcion: sonCoprimos 
	Descripcion : haskell ya tiene integrada la funcion para calcular el maximo comun divisor gdc, en esta funcion recibira  a numeris cuyos enteros no tienen nungun divisor en comun aparte del 1 (y el -1)
-}

sonCoprimos :: Int -> Int -> Bool 
sonCoprimos a b = gcd a b == 1

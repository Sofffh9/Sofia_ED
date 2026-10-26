import Sofia_Pares (esParBit, esPrimo, mensajePrimo, sonCoprimos)

{- 
        Funcion: Plazo
        Descripcion: representa la duracion de la inversion 
        Uso : Plazo en dias o meses 
-}

data Plazo = Dias Int | Meses Int 

{- 
	Funcion: aDias 
	Descripcion: representa el cambio a dias 
	Uso : COnvierte el plazo a dias (1, 6, 12 meses = 28, 182, 364 dias)
-}

aDias :: Plazo -> Int 
aDias (Dias d)   = d
aDias (Meses 1)  = 28
aDias (Meses 6)  = 182
aDias (Meses 12) = 364
aDias (Meses _)  = error "Meses no validos, usa 1, 6 o 12"

{-
	Funcion : tasa
        Descripcion :interes bruto anual 
        Uso: Rendimiento del interes 
-}

tasa :: Int -> Double 
tasa 28  = 0.0609
tasa 182 = 0.0691
tasa 364 = 0.0744

tasa _ = error "Plazo no valido usa 28, 182 o 364 dias"

-- VF = VI * (1 + 1 * t / 360)

{- 
	Funcion : redondeo
	Descripcion : el redondeo de los puntos decimales
	Uso :  redondeo a centavos
-}
 
redondea :: Double -> Double 
redondea x = fromIntegral (round (x * 100)) / 100

{-

	Funcion: rendiemiento 
	Descripcion: la ganancia que genera la inversion durante el plazo, antes de impuestos (ISR) y comisiones, es solo el interes, sin contar el capital inicial 
	Uso : ganancia de la inversion antes de impuestos y comisiones
-}

rendimiento :: Double -> Plazo -> Double
rendimiento vi p = redondea (vi * tasa t * fromIntegral t / 360)
   where t = aDias p


{-
        Funcion: cetes
        Descripcion: una plataforma de inversion del gobierno 
        Uso : inversion de un monto incial y dependiendo de tus necesidades de liquidez podras recibir >

        Funcion: mensajeCetes
        Descripcion: devuelve un mensaje
        Uso: recibe monto inicial de inversion, un plazo expresado en dias o meses y devuelve  el plazo>
	
	Monto final VF = VI + rendimiento
-}

cetes :: Double -> Plazo -> Double
cetes vi p = redondea (vi + rendimiento vi p)

mensajeCetes :: Double -> Plazo -> String
mensajeCetes vi p =
  "Despues de " ++ show (aDias p) ++ " dias, obtuve " ++ show (rendimiento vi p)
  ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. "
  ++ "El monto total de mi inversion es de " ++ show (cetes vi p) ++ "."

-- escribir en ghci " mensajeCetes ___ (Dias __  o Meses __  ) 

{-
        Funcion: negativos
        Descripcion : numeros negativos 
        Uso : una lista de comprension que cuenta numeros negativos de una lista
-}

negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

{- 
	Funcion: soloPares
	Descripcion: saca solo los numeros Pares
	Uso: Recibe una lista de tipo entero y devuelve una lista unicamente con los numeros que sean pares de la lista original
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]

{-
	Funcion:  primos
	Descripcion: saca los numeros primos
	Uso: recibe una lista de numeros enteros y devuelve los primos de esta 
-}

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

{- 
	Funcion: coprimos 
	Descripcion : devuelve una lista de coprimos antes de n  
	Uso : recibe n  y da una lista en la cual esos solo se divide entre 1 o si mismo 
-}

coprimos :: Int -> [Int] 
coprimos n = [x | x <- [1 .. n], sonCoprimos n x ]

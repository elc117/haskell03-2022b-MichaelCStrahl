-- Recebe uma lista e adiciona 10 a cada elemento
add10toall :: [Int] -> [Int]
add10toall list = [x * 10 | x <- list]

-- Receba uma lista e um número e multiplique ambos produzindo uma nova lista
multN :: Int -> [Int] -> [Int]
multN y n = [x * y | x <- n]

-- Defina a função anterior utilizando o map
multN' :: Int -> [Int] -> [Int]
multN' y n = map (* y) n

-- Receber uma lista e calcular [3*x+2] produzindo uma nova lista
applyExpr :: [Int] -> [Int]
applyExpr y = [3 * x + 2 | x <- y]

-- Defina a função anterior com lambda e uma função de alta ordem
applyExpr' :: [Int] -> [Int]
applyExpr' y = map (\x -> 3 * x + 2) y

-- Adicionar sufixo a uma lista de strings
addSuffix :: String -> [String] -> [String]
addSuffix x y = [n ++ x | n <- y]

-- Adicionar uma lista somente com os valores maiores que 5
selectgt5 :: [Int] -> [Int]
selectgt5 y = [x | x <- y, x > 5]

-- Retornar uma o somatório dos valores ímpares de uma lista
sumOdds :: [Int] -> Int
sumOdds y = sum [x | x <- y, odd x]

-- Resolver a mesma questão anterior com list comprehension
sumOdds' :: [Int] -> Int
sumOdds' y = foldl (+) 0 (filter (\x -> odd x) y)

-- Somar somente os valores pares entre 20 e 50, inclusive
selectExpr :: [Int] -> [Int]
selectExpr y = [x | x <- y, even x, x >= 20, x <= 50]

-- Retornar somente quantidade de palavras com menos de 5 caracteres
countShorts :: [String] -> Int
countShorts y = length [x | x <- y, length x < 5]

-- Retornar somente os números da lista que [x ^ 2 / 2] > 10
calcExpr :: [Float] -> [Float]
calcExpr y = [x ^ 2 / 2 | x <- y, (x ^ 2 / 2) > 10]

-- Receber uma stringe converter espaços em '-'
trSpaces :: String -> String
trSpaces y = [if x == ' ' then '-' else x | x <- y]

-- Retornar uma lista com somente segundos elementos de uma tupla
selectSnd :: [(Int, Int)] -> [Int]
selectSnd y = [snd x | x <- y]

-- Retorna o somatório dos produtos pares de elementos de duas listas
dotProd :: [Int] -> [Int] -> Int
dotProd x1 y1 = sum [x * y | (x, y) <- zip x1 y1]

main = do
  print (add10toall [1 .. 5])
  print (multN 2 [1 .. 5])
  print (multN' 2 [1 .. 5])
  print (applyExpr [1 .. 5])
  print (applyExpr' [1 .. 5])
  print (addSuffix "@inf.ufsm.br" ["fulano", "beltrano"])
  print (selectgt5 [1 .. 10])
  print (sumOdds [1 .. 5])
  print (sumOdds' [1 .. 5])
  print (selectExpr [1 .. 100])
  print (countShorts ["zxcvqwe", "asd"])
  print (calcExpr [1.0 .. 10.0])
  print (trSpaces "asda asd as a")
  print (selectSnd [(0, 1), (1, 2), (3, 4)])
  print (dotProd [1, 1, 1, 1] [2, 2, 2, 2])
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
-- applyExpr' :: [Int] -> [Int]

main = do
  print (add10toall [1 .. 5])
  print (multN 2 [1 .. 5])
  print (multN' 2 [1 .. 5])
  print (applyExpr [1 .. 5])
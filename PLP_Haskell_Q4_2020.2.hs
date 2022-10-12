quadrado :: Int  -> [Int]
quadrado num = [x^2 | x <- [1..num]]

adicionaQuadrado :: Int -> [Int] 
adicionaQuadrado num = if num > 1 then quadrado num ++ adicionaQuadrado (num-1)
                else quadrado num

somaQuadrados :: [Int] -> Int 
somaQuadrados = sum

main :: IO()
main = do
    simpleList <- readLn
    let soma =  somaQuadrados(adicionaQuadrado simpleList)
    print soma
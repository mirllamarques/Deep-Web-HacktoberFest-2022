index :: [Int] -> [(Int, Int)]
index idx = zip idx [1..]

somaIndex :: [(Int, Int)] -> [Int]
somaIndex sumidx = [x + y | (x, y) <- sumidx] 

potevenIndex :: [(Int, Int)]-> [Int]
potevenIndex evenCript = [2^x | (x, y) <- evenCript]

potoddIndex :: [(Int, Int)]-> [Int]
potoddIndex oddCript = [x^2 | (x, y) <- oddCript]

potIndex :: [(Int,Int)] -> [Int]
potIndex [] = []
potIndex (h:t) = if ehPar h then potevenIndex [h] ++ potIndex t
                else potoddIndex [h] ++ potIndex t

ehPar :: (Int, Int) -> Bool 
ehPar (x, y) = even y

main :: IO()
main = do
    simpleList <- readLn 
    let criptList = potIndex (index(somaIndex(index simpleList)))
    print criptList
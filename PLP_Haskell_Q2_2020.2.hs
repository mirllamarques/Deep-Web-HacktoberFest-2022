contaCedula :: Int -> Int
contaCedula quantidade
    = c1 + c2 + c5 + c10 + c20+ c50 + c100
    where
        c100 = div quantidade 100
        r100 = mod quantidade 100
        c50 = div r100 50
        r50 = mod r100 50
        c20 = div r50 20
        r20 = mod r50 20
        c10 = div r20 10
        r10 = mod r20 10
        c5 = div r10 5
        r5 = mod r10 5
        c2 = div r5 2
        r2 = mod r5 2
        c1 = div r2 1

main :: IO()
main = do 
    dinheiro <- getLine 
    let cedulasTotais = contaCedula(read dinheiro)
    print cedulasTotais
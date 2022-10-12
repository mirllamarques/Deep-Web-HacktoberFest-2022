liberaCompra :: Float -> Float -> Float -> String
liberaCompra mesada valor qtdParcelas 
    | parcelas <= (0.4 * mesada) = "Compra liberada"
    | otherwise = "Compra negada"
    where parcelas = valor/qtdParcelas


main :: IO()
main = do
    mesada <- readLn
    valor <- readLn
    qtdParcelas <- readLn
    let autorizada = liberaCompra mesada valor qtdParcelas
    print autorizada
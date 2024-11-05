import System.Environment (getArgs)

powersign n = if n `rem` 2 == 0 then 1 else -1

leibniz n = 4.0 * sum (map f [0..n])
  where
    f n = fromIntegral (powersign n) / fromIntegral (2 * n + 1)

main = do
    args <- getArgs
    let str_n = args !! 0
    let n = read str_n :: Int
    print $ leibniz n

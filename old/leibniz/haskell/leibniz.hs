import Data.List (foldl')
import System.Environment (getArgs)

powersign 0 = 1
powersign 1 = -1
powersign n = powersign (n `mod` 2)

leibniz_term n = fromIntegral (powersign n) / fromIntegral (2 * n + 1)
leibniz n = 4 * foldl' (+) 0 [leibniz_term k | k <- [0..n]]

main = do
    args <- getArgs
    let str_n = args !! 0
    let n = read str_n :: Int
    print (leibniz n)

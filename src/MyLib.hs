module MyLib (someFunc) where
import System.Random (randomRIO)


someFunc :: IO ()
someFunc = putStrLn "someFunc"


rolls :: IO (Int, Int)
rolls = do
  x <- randomRIO (1,6)
  y <- randomRIO (1,6)
  return (x, y)

showmany :: Int -> IO ( [Int] )
showmany n = if n > 0 then do
    x <- (:) <$> randomRIO (1,8)
    showmany (n-1)
    return 
    else do
        return []
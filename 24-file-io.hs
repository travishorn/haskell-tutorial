import Data.List
import System.IO

-- Input/Output

-- Getting input
sayHello = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn $ "Hello " ++ name
-- Call with `sayHello`. It will ask for your name, then print out a greeting

-- Write to a file
writeToFile = do
  theFile <- openFile "24-file-io.txt" WriteMode
  hPutStrLn theFile "Some sample text."
  hClose theFile

-- Read from a file
readFromFile = do
  theFile2 <- openFile "24-file-io.txt" ReadMode
  contents <- hGetContents theFile2
  putStr contents
  hClose theFile2

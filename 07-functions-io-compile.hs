import Data.List
import System.IO

-- If you compile a program, you'll be able to run it if you define everything
-- in main

-- `do` chains a bunch of different commands
main = do
  -- Print a line to the screen
  putStrLn "What's your name?"

  -- getLine collects input from user
  -- Use getLine to store the input to name constant
  name <- getLine

  -- Print a greeting. `++` concatenates strings
  putStrLn ("Hello " ++ name)

-- Run `ghc -dynamic [filename] to compile the program
-- Run the program with ./[filename]

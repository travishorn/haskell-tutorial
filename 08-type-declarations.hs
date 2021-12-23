import Data.List
import System.IO

-- Declare a type definition
-- This one takes two Ints and returns an Int
-- The last type on the line defines the return value
addMe :: Int -> Int -> Int

-- funcName param 1 param 2 = operations (returned value)

addMe x y = x + y

-- See this function's type definition with `:t addMe` in the REPL
-- Call it with `addMe 56 9993` to see it return `10049`

-- Define function WITHOUT type declaration
-- Does same thing as addMe above, but since we didn't define types,
-- it can accept floats

sumMe x y = x + y

-- If you try to pass floats to addMe (like `addMe 4.5 6.7`, you'll get an
-- error. It seems more limiting at first, but it makes sense to define strict
-- types and throw an error when the function receives something it's not
-- expecting.

-- Define a function to add tuples
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)
-- addTuples (1,2) (3,4) will return (4,6)

-- Accept an Int and return a String
whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You can drink"
whatAge _ = "Nothing important"
-- Call with whatAge 16 to return "You can drive" etc
-- _ is like a catch-all in this case. Any number besides the 3 above will print
-- "Nothing important"

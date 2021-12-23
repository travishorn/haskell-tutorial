import Data.List
import System.IO

-- times4 multiplies an input Int by 4
times4 :: Int -> Int
times4 x = x * 4

-- Defining a function that accepts a function
-- What kind of function does it accept? One that accepts an Int and returns an
-- Int (hint: times4 meets this criteria, see above)
pass3 :: (Int -> Int) -> Int

-- Accepts a function, then feeds it the value 3
-- Put another way, pass3 passes the number 3 to any function you give it
pass3 func = func 3

-- Call pass3 and pass it the function times4
-- Remember that all pass3 does is pass the value 3 to whatever function its
-- given. So num3Times4 = times4 3
num3Times4 = pass3 times4
-- Returns 12

import Data.List
import System.IO

-- Recursion. Used A LOT in Haskell
-- New function called factorial. Accepts an Int and returns an Int
factorial :: Int -> Int

-- If 0 is passed, return 1
factorial 0 = 1

-- If anything other than 0 is passed...
-- Return that number times the factorial of itself minus 1
-- How do we calculate the factorial of the number minus 1? By calling our
-- factorial function again, INSIDE itself. This will keep on recurring until
-- 0, where our function returns 1 (see above)
factorial n = n * factorial (n - 1)

{-
 - When called like this: `factorial 3`...
 - The function runs 3 * factorial 2
 - That spawns the next call (to factorial 2), which runs...
 - 2 * factorial 1
 - Which calls factorial 1
 - Which runs 1 * factorial 0
 - Which calls factorial 0
 - Which returns 1
 -
 -  3 * factorial 2 =
 -  3 * (2 * factorial 1) =
 -  3 * (2 * (1 * factorial 0)) =
 -  3 * (2 * (1 * 1)) = 6
-}

-- A more concise way to do the same thing
factorial2 n = product [1..n]

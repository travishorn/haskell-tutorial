import Data.List
import System.IO

-- Define a function that accepts one Int and returns a function that accepts
-- one Int and returns an Int
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

-- Call getAddFunc and pass it the value 3. getAddFunc is going to return a
-- function that accepts an Int, adds 3 to it, and returns the result. We store
-- that function as `add3`
add3 = getAddFunc 3

-- Call add3 and pass it 4. add3 will add 3 to 4, returning 7
fourPlus3 = add3 4

-- Can even use add3 to map over a list of Ints
threePlusList = map add3 [1,2,3,4,5]
-- Returns [4,5,6,7,8]

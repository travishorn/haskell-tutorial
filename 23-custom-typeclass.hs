import Data.List
import System.IO

-- Custom typeclass

-- Create a custom version of Eq called MyEq
class MyEq a where
-- Here, `a` represents any type that implements the function areEqual
  areEqual :: a -> a -> Bool

data ShirtSize = S | M | L

-- ShirtSize should use the custom MyEq typeclass, which contains an areEqual
-- function to test equality
instance MyEq ShirtSize where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False

newSize = areEqual M M
-- is True
-- A medium shirt size does equal a medium shirt size using our custom areEqual
-- typeclass

-- You could not do M == M because there is no instance for Eq ShirtSize
-- arising from the use of `==`

import Data.List
import System.IO

-- Type classes
-- Things like Num, Eq, Or, and Show
-- Correspond to sets of types that have certain operations defined for them

-- (+) works with Num
-- `:t (+)` returns `(+) :: Num a => a -> a -> a`

-- So the addition operator (+) works with any type class Num
-- Could be Int or Float, etc. as long as it's in the Num type class

data Employee = Employee { name :: String,
                           position :: String,
                           idNum :: Int
                         } deriving (Eq, Show)

-- deriving (Eq, Show) means that we will be able to check equality between
-- employees and we'll be able to show the employees as strings.

samSmith = Employee { name = "Sam Smith", position = "Manager", idNum = 1000 }
pamMarx = Employee { name = "Pam Marx", position = "Sales", idNum = 1001 }

isSamPam = samSmith == pamMarx
-- is False

samSmithData = show samSmith
-- contains all this employee's data as a String

-- Another data type

data ShirtSize = S | M | L

-- Custom definition of how equality works on this type
instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

-- elem checks if an item is in a List. During the first check, it's checking
-- if S == S. In the block above, we defined that when S == S return True
smallAvail = S `elem` [S, M, L]

-- Custom definition of how show works on this type
-- When someone tries to show S for example, "Small" is shown
instance Show ShirtSize where
  show S = "Small"
  show M = "Medium"
  show L = "Large"

theSize = show S
-- equals "Small"

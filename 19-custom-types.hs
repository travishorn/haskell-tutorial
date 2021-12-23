import Data.List
import System.IO

-- Custom types
-- Store multiple values similar to a "struct"

-- Create a new type called Customer which accepts two strings followed by a
-- Double. This could represent a name, address, and account balance
-- deriving Show just means we'll be able to use this as a string
data Customer = Customer String String Double
  deriving Show

-- Define tomSmith's type. Just Customer
tomSmith :: Customer

-- Define the tomSmith function. It calls Customer and passes two strings and a
-- double, just like the definition expected
tomSmith = Customer "Tom Smith" "123 Main" 20.55

-- Type definition for a new function called getBalance. It accepts a Customer
-- and returns a Double
getBalance :: Customer -> Double

-- Function definition. getBalance takes the passed in Customer and discards
-- the first two values (those two strings, the name and address) and stores
-- the third value (the account balance) as b. Then it returns b.
getBalance (Customer _ _ b) = b

-- Call getBalance and pass in tomSmith. Store the returned value in
-- tomSmithsBalance.
tomSmithsBalance = getBalance tomSmith
-- Will equal 20.55

-- Another custom type for playing Rock, Paper, Scissors

-- The accepted values for RPS are Rock, Paper, and Scissors
data RPS = Rock | Paper | Scissors

-- Type definition for a function called `shoot`. It accepts two RPSs and
-- returns a String
shoot :: RPS -> RPS -> String

-- Function definition for `shoot`. When it's passed Paper and Rock, return a
-- specific String. Repeat for all possible combinations.
shoot Paper Rock = "Paper beats Rock"
shoot Paper Scissors = "Paper loses to Scissors"
shoot Rock Paper = "Rock loses to Paper"
shoot Rock Scissors = "Rock beats Scissors"
shoot Scissors Paper = "Scissors beats Paper"
shoot Scissors Rock = "Scissors loses to Rock"

-- If somehow we didn't account for a combination, show a simple error message
shoot _ _ = "Error"

-- `shoot Paper Rock` will return "Paper beats Rock"
-- `shoot Paper Scissors` will return "Paper loses to Scissors"
-- and so on

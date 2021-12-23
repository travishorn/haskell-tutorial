import Data.List
import System.IO

-- Lambda
-- A way to create functions that don't have a name

-- Map over the range 1..10
-- What function are we going to map over with?
-- An unnamed function (lambda) that accepts a value and returns that value * 2
-- Notice that lambdas start with `\`
dbl1To10 = map (\x -> x * 2) [1..10]
-- Returns [2,4,6,8,10,12,14,16,18,20]

-- Could avoid using this lambda with an infix operator
dbl1To20 = map (*2) [1..20]
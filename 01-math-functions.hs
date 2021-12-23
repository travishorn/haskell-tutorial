import Data.List
import System.IO

sumOfNums = sum [1..1000]

-- [1...1000] is a list.

addEx = 5 + 4
subEx = 5 - 4
mulEx = 5 * 4
divEx = 5 / 4

-- Prefix operator. Function comes before the two values passed into it
modEx = mod 5 4

-- Infix operator. Function is "in" between the two values. Not as common.
modEx2 = 5 `mod` 4

-- If doing addition with neg numbers, put () around it
negNumEx = 5 + (-4)

-- You can see what's going on with a function by running :t [fn] in the REPL
-- For example, run `ghci` and then type `:t sqrt` to see the square root fn.
-- It will print out `sqrt :: Floating a => a -> a`
-- Floating means its planning on doing something with floating pt nums. So
-- if we want to use integers, we'll have to do something special

flt16 = 16.0 :: Float
sqrtOf16 = sqrt flt16

int9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral int9)

-- Built in math functions
piVal = pi
ePow9 = exp 9 -- exponention of 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh

-- Logical operators

-- Functionally equivalent to `trueAndFalse = False`
trueAndFalse = True && False

-- Functionally equivalent to `trueOrFalse = True`
trueOrFalse = True || False

-- Functionally equivalent to `notTrue = False`
notTrue = not(True)

-- See how the addition operator works. Run `:t (+)` It will return
-- Num a =>              a -> a             -> a
-- Works with Num type   Takes two values   Returns a value

-- See how truncate works. Run `:t truncate` It will return
-- (RealFrac a,   Integral b) =>   a                 -> b
-- a is a float   b is an int      takes an float    returns an int

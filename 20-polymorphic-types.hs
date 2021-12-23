import Data.List
import System.IO

-- Polymorphic types
-- Create two versions of a type

-- Shape of a Circle accepts 3 Floats (x, y, and radius)
-- While Shape of a Rectangle accepts 4 Floats (top left x & y, bottom right x & y)
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving Show

-- Type definition for a function called `area`
-- It accepts a Shape and returns a Float
area :: Shape -> Float

-- Depending on the passed in shape, we perform a different calculation

-- If a circle is passed in, discard the first two values. We don't need x and
-- y. Instead we take the radius as r and then return pi times the radius
-- squared.
area (Circle _ _ r) = pi * r ^ 2

-- If a rectangle is passed in, calculate the area differently than a circle.
-- Take the absolute value of the right minus the left coordinate
-- Multiply that by the absolute value of the bottom minus the top
area (Rectangle x y x2 y2) = abs (x2 - x) * abs (y2 - y)

myCircle :: Shape
myCircle = Circle 5.0 5.0 3.5
myCircleArea = area myCircle
-- myCircleArea = 38.484512

myRectangle :: Shape
myRectangle = Rectangle 0.0 0.0 10.0 5.0
myRectangleArea = area myRectangle
-- myRectangleArea = 50.0

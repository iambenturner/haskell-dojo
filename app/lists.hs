party :: [String]
party = ["Bulbasaur", "Charmander", "Squirtle", "Pikachu"]

--Destructure 

--h : t = party

h1 : (h2 : t) = party

isSingleton :: [a] -> Bool
isSingleton (h: []) = True
isSingleton _ = False

type Point = (Float, Float, Float) -- 3-Tuple

getX :: Point -> Float 
getX (x, _, _) = x --_ wildcard _ indicates an unused value

getY :: Point -> Float 
getY (_, y, _) = y

getZ :: Point -> Float 
getZ (_, _, z) = z

_ : (_: (_ : (_ : (_ : (_ : (yz : _)))))) = [1, 2, 3, 4, 5, 6, 7]

secondElem (_:y:_) = "The 2nd element is " ++ show y
secondElem _       = "List has less than two elements"

second :: [a] -> a   --ordering the messages specific to general
second (_ : (y : _)) = y
second _             = error "list has less than two elements"

--To avoid runtime errors, it is best to define functions that must account for all possible inputs

--for loop in python
--for (int i = 0; i < party.length(); i++) {
--    party[i]
--}

--for loop in haskell 
--(t : h) = party
(x : xs) = party

--A scope is a region of code where something is allowed to operate 

--declaring a variable(s) in an outer scope
trainer1 = "Ash Ketchum"
trainer2 = "Ashley Ketchum"
--referencing the variable(s) in an inner scope
greet1 = "Welcome to Viridian City, " ++ trainer1 ++ "!"
greet2 = "Welcome to Viridian City, " ++ trainer2 ++ "!"

--Name Resolution 

--declaring a variable in an intermediate (local) scope
greet = "Welcome to Viridian City, " ++ trainer ++ "!"
    where
     trainer = "Ash Ketchum"

--referecing the variable in an outer (global) scope would return a Variable Not In Scope error messgae
--thank = "Arigato, " ++ trainer ++ "!"

--Shadowing 
greeter :: String -> String
greeter input = "Welcome to Viridian City, " ++ input ++ "!"

--Intermediate Scope can be helpful to assign names to intermediate results when writing complex functions
--Haskell offers two techniques for introducting additional scoprs: 1) let-in expressions, and 2) where clauses 

greet_let :: String -> String  --let-in expressions
greet_let input =
        let city = "Viridian City"
        in "Welcome to " ++ city ++ ", " ++ input ++ "!"


--let-in examples (let-in expression precedes the content of the scope its enclosing):
sumSquaresOrSquareSum x y = 
    let sumSquares = x ^ 2 + y ^ 2
        squareSum = (x + y) ^ 2
    in max sumSquares squareSum



greet_where :: String -> String
greet_where input = "Welcome to " ++ city ++ ", " ++ input ++ "!"
    where city = "Cerulean City"

--where clause follows the content of the scope its enclosing:
sumSquaresOrSquareSum_where x y = max sumSqs sqSum -- enclosed
  where -- enclosing scope
    sumSqs = x ^ 2 + y ^ 2
    sqSum  = (x + y) ^ 2

--if (let x = 2 in x > 1) then "abc" else "xyz"

fizzBuzz :: Int -> String
fizzBuzz x
    | mod x 3 == 0 && mod x 5 == 0 = "FizzBuzz"
    | mod x 3 == 0 && mod x 5 /= 0 = "Fizz"
    | mod x 3 /= 0 && mod x 5 == 0 = "Buzz"
    | mod x 3 /= 0 && mod x 5 /= 0 = show x

--fizzBuzz :: Int -> String
--fizzBuzz x
--    | isDivisible x 3 && isDivisible x 5 = "FizzBuzz"
 --   | isDivisible x 3                    = "Fizz"
 --   | isDivisible x 5                    - "Buzz"
--    | otherwise                           = show x
--    where isDivisible a b = mod a b == 0 


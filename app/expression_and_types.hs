--x = 3 + 4


--y = "abc"

_A = 2.3

double x = x + x

add x y = x + y 

identity x = x 

--x :: Int
--x = -12

y :: Char
y = '@'

z :: Bool
z = True

isEven :: Int -> Bool
isEven x  = mod x 2 == 0

--b :: [Int] 
--b = [-4, 12, 0, 97, -194, 2, 7, -11]
-- [Char]
c :: String
c = ['h','a','s','k','e','l','l']

d :: [Bool]
d = [True, False, False, True, True]

data StarterPokemon = Bulbasaur | Charmander | Squirtle
    deriving (Show, Read, Eq, Ord, Bounded, Enum)

x :: [String]
x = [ "Pikachu", "Balbasaur", "Charmander", "Magikarp", "Eevee"]

data Color = Red | Green | Blue
    deriving Show

---Linked List
--[7, -1, 19, 12, 0, 5] = 7 : (-1 : (19 : (12 : (0 (5 :[])))))
 
--- Constructing a List

--data [] a = [] | a : [] a 

--data List a = [] | a : List a 

-- Attention!

h : t = "Pikachu" : [ "Balbasaur", "Charmander", "Magikarp", "Eevee"]

--(a, b) = ("Charmander", 4)

a : b =  ["Pikachu", "Charmander", "Squirtle"]

--"Pikachu" : ("Charmander" : ["Squirtle"])
--a         : (b            : c)

pokemon :: [String]
pokemon = [ "Pikachu", "Balbasaur", "Charmander", "Magikarp", "Eevee"]

first :: [a] -> a
first (h : _) = h

second :: [a] -> a
second (_ : (s :_)) = s

third :: [a] -> a
third (_ : (_ : (x : _))) = x 

--HW: forth and fith elements 
fourth :: [a] -> a
fourth (_ : (_ : (_ : (y : _)))) = y

fifth :: [a] -> a
fifth l = l !! 4
--fifth (_ : (_ : (_ : (_ : z))))




isSingleton :: [a] -> Bool
isSingleton (_ : []) = True
isSingleton _        = False
--x :: Int 
--x = 3 + 4
you can remove this line
--I can say anthing here without being evaluated if I reply to you. 
z :: Bool
z = True

--y :: Char
--y = 'a'

a :: [String]
a = ["Bulbasaur","Pikachu","Squirtle"]

b :: [Int]
b = [1, -7, 29, 0]

--type PName = String
--type PId = Int
--type Pokemon = (String, Int, String)

--pikachu :: Pokemon --3 Tuple or --2 Tuple (triple or pair)
--pikachu = ("Pikachu", 25, "Electric")

--['a','b','c','d','e','f','g'] :: [Char] -- In Haskell, a list of characters is the same as a string. 
--"abcdefg" :: String

--roberto :: Pokemon
--roberto = ("Roberto", 4, "Woods")

--bulbasaur :: Pokemon
--bulbasaur = ("Bulbasaur", 1, "Potter")

data Pokemon = Bulbasaur | Charmander | Pikachu | Squirtle
    deriving Show

data Trainer = Ash | Misty | Brock

data Color = Red | Green | Blue

--Typeclass

x :: Float
x = 2.3

y :: Int 
y = 7

--p :: Pokemon 
--p = Squirtle

--Custom Instances and Conditional Logic


--If, then else
--getStarterPokemon_if_then_else :: String -> String
--getStarterPokemon_if_then_else t =
  --  if t == "fire"
    --    then "Charmander"
      --  else if t == "water"
        --    then "Squirtle"
          --  else if t == "grass"
            --    then "Bulbasaur"
              --  else "Pikachu"

--Guard 
{-getStarterPokemon_guards :: String -> String
getStarterPokemon_guards  t =
  t == "fire" = "Charmander"
  t == "water" = "Squirtle"
  t == "grass" = "Bulbasaur"
  otherwise = "Pikachu"
-}
--Case Expressions

getStarterPokemon_Case :: String -> String
getStarterPokemon_Case t = case t of 
    "fire"  -> "Charmander"
    "water" -> "Squirtle"
    "grass" -> "Bulbasaur"
    _       -> "Pikachu"

--Function Patterns






import Data.Char

_SIZE_ :: Int
_SIZE_ = 3

_DISPLAY_LOGO_ :: Bool
_DISPLAY_LOGO_ = True 

isEven :: Int -> Bool
isEven x  = mod x 2 == 0

convertRowIndex :: Char -> Int 
convertRowIndex x = (fromEnum((toUpper x)) - 65)

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1,-1)

_SEP_ :: [String]
_SEP_ = ["_", "|", "_", "|", "_"]

data Square = X | O | Unsure
    deriving Show

data GameState =  Xwon | Owon | Tie | Inprogress

type Player = Square
type Row = Square 
type Line = Square 
type Board = Row 
type Move = (Int, Int)

getFirstPlayer :: Bool -> String
getFirstPlayer t = 
    if t == True 
        then "X"
        else if t == False
            then "O"
            else if t == False
                then "O"
                else "X"


getFirstPlayer_ :: Bool -> String 
getFirstPlayer_ t
    | t == False  = "O"
    | t == True  = "X"
    | otherwise  = "Not Sure"

showGameState t = case t of
    "X"     -> "X won the game"
    "O"     -> "O won the game"
    "Both"  -> "The game is a tie"
    _       -> "The game is in progress"


switchPlayer :: String -> String
switchPlayer t
    | t == "X" = "O"
    | t == "O" = "X"  
    | t == "" = ""
    | otherwise = "No new player"


showSquare :: Char -> String
showSquare t = case t of
    'X' -> "X"
    'O' -> "O"
    _  -> ""
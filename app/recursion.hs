--changes to committ 2

import Debug.Trace

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n
  | n > 1     = n * factorial (n - 1)
  | otherwise = error "Negative Integer"

length' :: [a] -> Int
length' []      = 0
length' (h : t) = 1 + length' t

sum_ind :: [Int] -> Int
sum_ind []      = 0
sum_ind (h : t) = h + sum_ind t

reverse' :: [a] -> [a]
reverse' []      = []
reverse' (h : t) = reverse' t ++ [h]

-- Iterative Recursion
sum_iter :: [Int] -> Int
sum_iter xs = loop 0 xs
  where loop count []      = count
        loop count (h : t) = loop (count + h) t
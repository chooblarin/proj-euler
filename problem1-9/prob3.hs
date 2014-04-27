{-
  Problem 3

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
-}

sieve (x:xs) = x : (sieve (filter (\y -> y `mod` x /= 0) xs))

primes = sieve [2..]

findMaxPrimeFactor n = findMaxPrimeFactor' n primes

findMaxPrimeFactor' 1 (x:xs) = x
findMaxPrimeFactor' n (x:xs) | n `mod` x == 0 = findMaxPrimeFactor' (n `div` x) (x:xs)
                             | otherwise      = findMaxPrimeFactor' n xs

main = putStrLn (show (findMaxPrimeFactor 317584931803))

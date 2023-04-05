import Language.Haskell.TH.PprLib (equals)

somme :: (Num a, Enum a) => a -> a
somme n = sum [1..n]

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleMe :: Num a => a -> a
doubleMe x = x + x

square :: Num a => a -> a
square x = x * x

cube :: Num a => a -> a
cube x = x * x * x

increment :: Num a => a -> a
increment x = x + 1

add :: Num a => a -> a -> a
add x y = x + y

incrementByAdd :: Num a => a -> a
incrementByAdd x = add x 1


pgcd :: (Ord t, Num t) => t -> t -> t
pgcd x y
  | x == y = x
  | x > y = pgcd (x-y) y
  | otherwise = pgcd x (y-x)


main = do
    putStrLn "BOnjour, entrer votre nom"
    nom <- getLine
    putStrLn ("Hello " ++ nom) 
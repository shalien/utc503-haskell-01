
somme :: (Num a, Enum a) => a -> a
somme n = sum[1..n]

doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y


newtype Nat = Nat Integer deriving (Eq, Ord, Show)

-- 自然数の集合の定義
natSet :: [Nat]
natSet = map Nat [0..]

-- 自然数・整数・実数の型をそれぞれ定義し、無限集合の「要素生成」と「集合に属するか（述語）」を含む構造を定義します。

newtype Nat = Nat Integer deriving (Eq, Ord, Show)

-- 自然数の集合の定義
natSet :: [Nat]
natSet = map Nat [0..]

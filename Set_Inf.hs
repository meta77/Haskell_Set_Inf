-- 自然数・整数・実数の型をそれぞれ定義し、無限集合の「要素生成」と「集合に属するか（述語）」を含む構造を定義します。

newtype Nat = Nat Integer deriving (Eq, Ord, Show)

-- 自然数の集合の定義
natSet :: [Nat]
natSet = map Nat [0..]

-- 整数
intSet :: [Integer]
intSet = interleave [0..] (tail $ map negate [0..])
  where interleave (x:xs) ys = x : interleave ys xs

-- 実数の近似モデル
import Data.Ratio (Ratio, (%))

-- 有理数の列（例：1/1, 1/2, 2/1, 1/3, 3/1, ...）※任意の順序で全体生成可能
rationalSet :: [Rational]
rationalSet = [n % d | d <- [1..], n <- [-d..d]]


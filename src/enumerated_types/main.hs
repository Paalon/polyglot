import Control.Monad (forM_)

data Season = Spring | Summer | Autumn | Winter deriving (Show, Eq, Enum)

next Spring = Summer
next Summer = Autumn
next Autumn = Winter
next Winter = Spring

prev Spring = Winter
prev Summer = Spring
prev Autumn = Summer
prev Winter = Autumn

isMild season = season == Spring || season == Autumn

isHot season = season == Summer

isCold season = season == Winter

main =
  let
    seasons = [Spring, Summer, Autumn, Winter]
    f season = do
      print season
      print $ next season
      print $ prev season
      print $ isMild season
      print $ isHot season
      print $ isCold season
  in
    forM_ seasons f

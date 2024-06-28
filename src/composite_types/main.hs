data Point = Point Double Double

main = do
  let
    p = Point 1 2
    Point x y = p
  print x
  print y

proc f1(x: int, y: int, z: string): (int, int, string) =
  result = (x + y, x * y, z)

proc f2(x: int, y: int, z: string): (int, int, string) =
  return (x + y, x * y, z)

proc f3(x: int, y: int, z: string): (int, int, string) =
  (x + y, x * y, z)

let f4 = proc(x: int, y: int, z: string): (int, int, string) =
  result = (x + y, x * y, z)

let f5 = proc(x: int, y: int, z: string): (int, int, string) =
  return (x + y, x * y, z)

let f6 = proc(x: int, y: int, z: string): (int, int, string) =
  (x + y, x * y, z)

echo f1(3, 4, "5")
echo f2(3, 4, "5")
echo f3(3, 4, "5")
echo f4(3, 4, "5")
echo f5(3, 4, "5")
echo f6(3, 4, "5")
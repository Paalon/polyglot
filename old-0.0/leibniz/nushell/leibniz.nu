def powersign [n: int] {
  if ($n mod 2 == 0) {
    1
  } else {
    -1
  }
}

def leibniz_term [n: int] {
  (powersign $n) / (2 * $n + 1)
}

def leibniz [n: int] {
  mut s = 0
  mut k = 0
  while $k <= $n {
    $s = $s + (leibniz_term $k)
    $k = $k + 1
  }
  4 * $s
}

def main [arg: int] {
  print (leibniz $arg)
}

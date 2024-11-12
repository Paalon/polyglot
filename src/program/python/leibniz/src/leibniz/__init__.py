import sys

def powersign(n):
    if n % 2 == 0:
        return 1
    else:
        return -1

def leibniz(n):
    ret = 0.0
    for k in range(n + 1):
        ret += powersign(k) / (2 * k + 1)
    return 4.0 * ret

def main() -> None:
    n = int(sys.argv[1])
    x = leibniz(n)
    print(x)

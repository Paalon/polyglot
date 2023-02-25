import sys

def powersign(n):
    if n % 2 == 0:
        return 1
    else:
        return -1

def leibniz(n):
    s = 0
    for k in range(n + 1):
        s += powersign(k) / (2 * k + 1)
    return 4 * s

n = int(sys.argv[1])
print(leibniz(n))

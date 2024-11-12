def fizz_buzz_element_string(n):
    n3 = n % 3 == 0
    n5 = n % 5 == 0
    if n3 and n5:
        return "fizz buzz"
    elif n3:
        return "fizz"
    elif n5:
        return "buzz"
    else:
        return str(n)

def print_fizz_buzz(n):
    for k in range(1, n + 1):
        print(fizz_buzz_element_string(k))

def main() -> None:
    print_fizz_buzz(30)

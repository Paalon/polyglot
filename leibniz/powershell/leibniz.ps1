param(
    [string]$n
)

Function Powersign {
    param ($n)
    If ($n % 2 -eq 0) {
        return 1
    } Else {
        return -1
    }
}

$x = 0..$n `
    | ForEach-Object { (Powersign $_) / (2 * $_ + 1) } `
    | Measure-Object -Sum
$s = 4 * $x.Sum
Write-Host $s

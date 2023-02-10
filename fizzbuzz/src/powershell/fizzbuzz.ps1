1..50 | % {
    if ($_ % 3 -eq 0 -and $_ % 5 -eq 0) {
        Write-Host "fizz buzz"
    } elseif ($_ % 3 -eq 0) {
        Write-Host "fizz"
    } elseif ($_ % 5 -eq 0) {
        Write-Host "buzz"
    } else {
        Write-Host $_
    }
}

function prompt {
    $fechaHora = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    Write-Host "[$fechaHora]" -ForegroundColor Cyan -NoNewline
    Write-Host " $(Get-Location)" -ForegroundColor Yellow -NoNewline
    return "> "
}
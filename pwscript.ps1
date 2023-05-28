param (
    [string]$ExecutablePath,
    [int]$Seconds
)

$process = Start-Process -FilePath $ExecutablePath -PassThru

Start-Sleep -Seconds $Seconds

if ($process.HasExited -eq $false) {
    $process | Stop-Process -Force
    Write-Host "Executable terminated."
}


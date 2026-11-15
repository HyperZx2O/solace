# Scans a built APK for secret-like strings. Fails (exit 1) on a hit.
param(
    [Parameter(Mandatory = $true)]
    [string]$ApkPath
)

$ErrorActionPreference = 'Stop'
if (-not (Test-Path $ApkPath)) {
    throw "APK not found: $ApkPath"
}

$patterns = @(
    'api[_-]?key',
    'secret',
    'password',
    'private[_-]?key',
    'AKIA[0-9A-Z]{16}',
    'AIza[0-9A-Za-z_-]{35}'
)

$tmp = Join-Path $env:TEMP "apk_scan_$([guid]::NewGuid())"
New-Item -ItemType Directory -Force -Path $tmp | Out-Null
try {
    Expand-Archive -Path $ApkPath -DestinationPath $tmp -Force
    $hits = @()
    foreach ($p in $patterns) {
        $found = Select-String -Path (Join-Path $tmp '*') -Pattern $p -Recurse -ErrorAction SilentlyContinue
        if ($found) { $hits += $found }
    }
    if ($hits.Count -gt 0) {
        Write-Output "SECRET SCAN FAILED: $($hits.Count) hit(s)"
        $hits | Select-Object -First 20 | ForEach-Object { Write-Output $_.Line }
        exit 1
    }
    Write-Output "Secret scan passed."
} finally {
    Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
}

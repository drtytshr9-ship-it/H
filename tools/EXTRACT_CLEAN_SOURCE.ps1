param(
    [string]$Archive = "HerfyTrackingSystem_2.18.1_CLEAN_DEVELOPMENT_SOURCE_FINAL.zip",
    [string]$Destination = "source"
)

$ErrorActionPreference = "Stop"
$ExpectedSha256 = "3f88c19797ec264d5ea9276bf4734b77051aa971d979b46cad4412d9b9e95a8b"

if (-not (Test-Path -LiteralPath $Archive -PathType Leaf)) {
    throw "Clean source archive not found: $Archive"
}

$ActualSha256 = (Get-FileHash -LiteralPath $Archive -Algorithm SHA256).Hash.ToLowerInvariant()
if ($ActualSha256 -ne $ExpectedSha256) {
    throw "Clean source checksum mismatch. expected=$ExpectedSha256 actual=$ActualSha256"
}

Remove-Item -LiteralPath $Destination -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $Destination -Force | Out-Null
Expand-Archive -LiteralPath $Archive -DestinationPath $Destination -Force

Push-Location $Destination
try {
    python -m compileall -q .
    python -m pytest -q -p no:cacheprovider
    python build/release/verify_architecture.py
    python build/release/verify_source_hygiene.py
    python build/release/verify_canonical_paths_and_update.py
    python build/release/verify_tracking_monitoring_notifications_contract.py
    python build/release/verify_update_install_contract.py
    python build/release/verify_server_authority_contract.py
} finally {
    Pop-Location
}

Write-Host "HERFY_CLEAN_SOURCE_EXTRACTED_AND_VERIFIED sha256=$ActualSha256"

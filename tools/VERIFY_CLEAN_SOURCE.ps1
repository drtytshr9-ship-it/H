param(
    [string]$SourceRoot = "source"
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $SourceRoot -PathType Container)) {
    throw "Source directory not found: $SourceRoot"
}

Push-Location $SourceRoot
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

Write-Host "HERFY_CLEAN_DEVELOPMENT_SOURCE_OK"

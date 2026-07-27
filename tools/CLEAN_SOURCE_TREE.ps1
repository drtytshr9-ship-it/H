param(
    [string]$SourceRoot = "source"
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $SourceRoot -PathType Container)) { throw "Source directory not found: $SourceRoot" }

Get-ChildItem -LiteralPath $SourceRoot -Directory -Recurse -Force |
    Where-Object { $_.Name -in @('__pycache__','.pytest_cache','.ruff_cache','.mypy_cache') } |
    Sort-Object FullName -Descending |
    Remove-Item -Recurse -Force

Get-ChildItem -LiteralPath $SourceRoot -File -Recurse -Force |
    Where-Object { $_.Extension -in @('.pyc','.pyo','.log','.tmp','.bak','.old','.orig') } |
    Remove-Item -Force

Write-Host "HERFY_SOURCE_TREE_CLEANED"

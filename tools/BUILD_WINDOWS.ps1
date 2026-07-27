param(
    [string]$SourceRoot = "source"
)

$ErrorActionPreference = "Stop"
if (-not $IsWindows) { throw "Windows build requires Windows x64" }
if (-not (Test-Path -LiteralPath $SourceRoot -PathType Container)) { throw "Source directory not found: $SourceRoot" }

& (Join-Path $PSScriptRoot "VERIFY_CLEAN_SOURCE.ps1") -SourceRoot $SourceRoot

Push-Location $SourceRoot
try {
    if (Test-Path -LiteralPath "BUILD.ps1") {
        & .\BUILD.ps1 -Clean
    } elseif (Test-Path -LiteralPath "00_BUILD_AND_PUBLISH.cmd") {
        & cmd.exe /d /c 00_BUILD_AND_PUBLISH.cmd
    } else {
        throw "No supported canonical Windows build entry point found"
    }
    if ($LASTEXITCODE -ne 0) { throw "Windows build failed with exit code $LASTEXITCODE" }
} finally {
    Pop-Location
}

Write-Host "HERFY_WINDOWS_BUILD_COMMAND_COMPLETED"

# Development commands

From the repository root after placing the clean source archive beside the extraction script:

```powershell
pwsh -File tools/EXTRACT_CLEAN_SOURCE.ps1
pwsh -File tools/VERIFY_CLEAN_SOURCE.ps1
```

For an actual Windows x64 build:

```powershell
pwsh -File tools/BUILD_WINDOWS.ps1
```

Before producing a new source package:

```powershell
pwsh -File tools/CLEAN_SOURCE_TREE.ps1
```

Do not bypass checksum verification or disable TLS/certificate validation in update, deployment, or dependency-download paths.

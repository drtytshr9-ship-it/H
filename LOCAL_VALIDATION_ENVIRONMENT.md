# Local validation environment

Source-level validation was executed in the available Linux environment with Python 3.13. The project targets Python 3.11 x64 for Windows release builds.

Validated without failure:

- Unit/integration/security test suite: 64 passed
- Architecture contract
- Source hygiene contract
- Canonical paths/update contract
- Tracking/monitoring/Windows-notification source contract
- Update/install/rollback source contract
- Client/server authority separation contract

Not classified as passed locally:

- PyQt5 runtime import gate, because PyQt5 is not installed in the Linux validation environment
- PyInstaller Windows freezing
- Inno Setup compilation
- Windows installation and uninstall
- Actual tray, registry, autostart, locked-EXE update, and Authenticode behavior

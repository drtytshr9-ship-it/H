# Clean source package contents

The clean source archive contains the application source, tests, build inputs, installer definitions, resources, version metadata, package manifest, and SHA-256 inventory.

Explicitly excluded:

- `__pycache__`, `.pytest_cache`, `.ruff_cache`, `.mypy_cache`
- `.pyc`, `.pyo`, logs, temporary files, backup copies
- virtual environments and downloaded wheels
- PyInstaller `build/` or `dist/` outputs
- generated EXE, portable ZIP, installer, release, and publish outputs
- server implementation or database-authority code
- duplicate or superseded updater, tray, session, sync, logging, and autostart implementations

The archive is intended as the sole development and Windows-build source for version 2.18.1.

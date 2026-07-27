# Validation results — clean development source

Executed against the exact clean tree before packaging:

```text
pytest: 64 passed, 0 failed
HERFY_ARCHITECTURE_OK
HERFY_SOURCE_HYGIENE_OK files=316
HERFY_CANONICAL_PATHS_UPDATE_OK
HERFY_TRACKING_MONITORING_WINDOWS_NOTIFICATIONS_OK
HERFY_UPDATE_INSTALL_CONTRACT_OK
HERFY_SERVER_AUTHORITY_CLIENT_OK
```

`verify_runtime_imports.py` was not classified as passed in the Linux validation environment because PyQt5 is not installed there. It remains a Windows/runtime dependency gate and must run in the Windows build environment.

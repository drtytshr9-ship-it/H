# Canonical source layout

```text
main.py
runtime/
build/
tests/
requirements.txt
requirements-build.txt
requirements-test.txt
pyproject.toml
pytest.ini
version.json
PACKAGE_MANIFEST.json
SHA256SUMS.txt
```

The source tree must not contain server code, frozen build output, installer output, virtual environments, cache directories, compiled Python files, runtime logs, temporary files, backups, or superseded copies of services.

Canonical responsibilities:

- `runtime/application`: use cases, DTOs, and ports.
- `runtime/domain`: domain models and policies.
- `runtime/infrastructure`: network and persistence adapters.
- `runtime/presentation`: PyQt views and UI adapters.
- `runtime/services`: lifecycle, session, sync, update, offline, and Windows services.
- `runtime/shared`: shared primitives and centralized settings/logging/path contracts.
- `build/installer`: PyInstaller and Inno Setup inputs.
- `build/release`: release validation, packaging, and update-manifest tooling.
- `tests`: unit, integration, and security regression tests.

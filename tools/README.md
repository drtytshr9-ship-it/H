# Repository tools

- `CLEAN_SOURCE_TREE.ps1`: removes generated and forbidden source-tree artifacts.
- `EXTRACT_CLEAN_SOURCE.ps1`: verifies the approved source SHA-256, extracts it, and runs source gates.
- `VERIFY_CLEAN_SOURCE.ps1`: re-runs source verification against an extracted tree.
- `BUILD_WINDOWS.ps1`: invokes the canonical Windows build after verification.

These wrappers do not replace the application's canonical build scripts under the extracted source. They provide repository-level controls around the approved archive.

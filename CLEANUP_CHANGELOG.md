# Cleanup changelog

- Removed all Python bytecode and cache directories from the deliverable tree.
- Removed test caches, formatter/linter caches, logs, temporary files, and backup artifacts.
- Removed the obsolete pytest `cache_dir` setting that generated a warning under the current test runner.
- Regenerated `PACKAGE_MANIFEST.json` from the exact clean tree.
- Regenerated `SHA256SUMS.txt` after the cleanup and configuration correction.
- Rebuilt deterministic development and Windows-build source archives from the same verified tree.
- Preserved the canonical `runtime/`, `build/`, and `tests/` ownership boundaries.
- Did not add server authority, frozen binaries, installer output, or release output to the source package.

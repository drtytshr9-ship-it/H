# Build source policy

1. The clean 2.18.1 archive and its SHA-256 are the only accepted source input for the next Windows build.
2. Build output, caches, virtual environments, reports generated at runtime, EXE files, installer outputs, and temporary artifacts must never be committed into the development source tree.
3. The Windows build must fail on checksum mismatch, test failure, source-hygiene failure, missing application EXE, missing Update Agent, missing Qt platform plugins, failed frozen self-check, failed silent installation, or failed uninstall.
4. The application is not Production Approved until an actual Windows runner completes all acceptance gates and the resulting artifacts are inspected.

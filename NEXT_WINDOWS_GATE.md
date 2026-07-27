# Next Windows acceptance gate

The next executable build must complete these gates on Windows x64:

1. Install Python 3.11 x64, runtime/build/test requirements, and Inno Setup 6.
2. Verify clean-source SHA-256 before extraction.
3. Run compileall, pytest, architecture, hygiene, paths/update, notifications, rollback, and authority-separation checks.
4. Build the main EXE and Update Agent with the canonical PyInstaller specs.
5. Confirm `qwindows.dll`, Qt plugins, translations, sounds, and installer resources are present.
6. Build the Inno Setup installer.
7. Perform silent fresh install, frozen self-check, notification self-check, and uninstall.
8. Generate SHA-256 for all release artifacts.

No successful EXE, installer, or Production status is claimed until these steps execute on a real Windows runner.

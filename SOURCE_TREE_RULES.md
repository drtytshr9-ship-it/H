# Source tree rules

The repository source candidate must retain one implementation per responsibility and one canonical path per subsystem.

- Session ownership: centralized session service/store/restorer/logout coordinator.
- Update ownership: one update-agent source and one transaction/rollback pipeline.
- Tray ownership: one real QSystemTrayIcon adapter; menu limited to Open, Logout, Exit.
- Autostart ownership: one Windows HKCU autostart service.
- Logging ownership: centralized logging setup and path contract.
- Sync ownership: coordinator plus user-scoped cursor/pull/push services.
- Build ownership: canonical PyInstaller specs and Inno Setup definition under `build/installer`.

Duplicate implementations, renamed legacy copies, stale root-level packages, and server-side authority code are forbidden in the client development package.

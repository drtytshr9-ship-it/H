# Current external build blocker

GitHub Actions runs for this repository are currently rejected before a Windows runner starts with the annotation:

`The job was not started because your account is locked due to a billing issue.`

This is an account-level GitHub restriction. It is not a source-code, test, PyInstaller, Qt, Inno Setup, installer, or update-agent failure.

Until the account restriction is removed or another free Windows x64 runner is connected, only source-level validation can be claimed.

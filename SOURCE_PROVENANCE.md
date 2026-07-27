# Source provenance

This Windows build branch fetches a pinned public source archive from:

- Repository: `ejram-ksa/herfy-client-build`
- Commit: `b9715d9caebe1b24cd6e7824a9b208878976b0c5`
- Archive: `source/HerfyTrackingSystem_2.18.0_Client_Source.zip`
- Required SHA-256: `a797c52975530bb3e34b00ef54f000364402f6a5eddf24b3e086af4bfe0d9375`

The pinned preparation script at the same commit creates the 2.18.1 build candidate. The workflow refuses to build if the archive checksum differs.

This branch does not claim to contain the separately reconstructed local Phase 14 source archive. It performs a reproducible Windows build from the pinned approved GitHub source while that exact archive is being transferred separately.

# IPTV Player — Windows Release

This package is prepared to build a real Windows **Setup.exe** through GitHub Actions.

## Build without installing Node.js on your PC

1. Create a new GitHub repository (private is fine).
2. Upload the contents of this folder to the repository root.
3. Open **Actions** → **Build Windows Installer**.
4. Click **Run workflow**.
5. Wait for the Windows job to finish.
6. Open the completed run and download the artifact **IPTV-Player-Windows**.
7. The downloaded artifact contains the real NSIS installer `.exe` and the portable `.exe`.

The workflow builds on Microsoft's `windows-latest` runner, so the generated executable is a genuine Windows binary.

## Local Windows build

With Node.js 20 LTS installed:

```bat
npm install
npm run dist
```

The output is placed in `release/`.

## Notes

- Use only IPTV playlists and provider credentials you are authorized to use.
- No channels or unauthorized content are bundled with the application.

# Chocolatey packages

This repo contains the source for various Chocolatey packages maintained by [HackproTm](https://github.com/HackproTm).

## Available packages

| Package | Version | Description |
|---------|---------|-------------|
| [Oracle21JDK](Oracle21JDK) | 21.0.12.1 | Oracle JDK 21 (LTS) |
| [Oracle25JDK](Oracle25JDK) | 25.0.5.1 | Oracle JDK 25 (LTS) |
| [Oracle26JDK](Oracle26JDK) | 26.0.2.1 | Oracle JDK 26 |

> **Note:** Oracle JDK 21 updates from 21.0.13 onward are licensed under the OTN license and have no public direct download, so `oracle21jdk` tracks the last NFTC release (21.0.12.1). JDK 26 is end-of-life, so `oracle26jdk` tracks its final public update (26.0.2.1). All packages pin their installer URL to Oracle's archive so the package version and binary stay in sync.

## Changing packages

* Change the files
* Keep the `version` in `*.nuspec` in sync with the binary referenced by `tools/chocolateyinstall.ps1`
* Pin download URLs to a specific version (for example, `/archive/jdk-25.0.5.1_windows-x64_bin.exe`) instead of `/latest/`, so the package version and the binary cannot drift apart
* Update `Checksum64` whenever the installer URL changes. Oracle publishes a matching `.sha256` file next to each binary, for example `https://download.oracle.com/java/25/archive/jdk-25.0.5.1_windows-x64_bin.exe.sha256`
* Build the package: `choco pack`
* Test the package (as administrator): `choco install [packageName] -dv -s .`

## Creating new packages

1. Copy an existing package directory
2. Change `id`, `version`, `packageSourceUrl` and `title` in the `*.nuspec` file
3. Set `Url64bit` to the archive URL for that exact version and set `Checksum64` to its SHA256 hash in `tools/chocolateyinstall.ps1`

## Maintaining packages

1. When Oracle releases an update, bump `version` in the `*.nuspec`, point `Url64bit` to the new archive binary and update `Checksum64` using Oracle's published `.sha256` file
2. Update the version in the "Available packages" table above
3. Create a feature branch from `main`, commit the changes, push it and open a Pull Request
4. Once merged, create a [Chocolatey account](https://community.chocolatey.org/account)
5. Create an API key and configure it locally:
   ```
   choco apikey -k <your-api-key> -s https://push.chocolatey.org/
   ```
6. Build the package:
   ```
   choco pack
   ```
7. Push the package:
   ```
   choco push [package].nupkg --source https://push.chocolatey.org/
   ```

## Contributing

1. Create a feature branch from `main`
2. Make your changes
3. Build and test the package locally
4. Submit a Pull Request

> **Note:** The `main` branch is protected. All changes must go through a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

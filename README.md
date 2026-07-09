# Chocolatey packages

This repo contains the source for various Chocolatey packages maintained by [HackproTm](https://github.com/HackproTm).

## Available packages

| Package | Version | Description |
|---------|---------|-------------|
| [Oracle21JDK](Oracle21JDK) | 21.0.11 | Oracle JDK 21 (LTS) |
| [Oracle25JDK](Oracle25JDK) | 25.0.3 | Oracle JDK 25 (LTS) |
| [Oracle26JDK](Oracle26JDK) | 26.0.1 | Oracle JDK 26 |

## Changing packages

* Change the files
* Build the package: `choco pack`
* Test the package (as administrator): `choco install [packageName] -dv -s .`

## Creating new packages

1. Copy an existing package directory
2. Change `id`, `version`, `packageSourceUrl` and `title` in the `*.nuspec` file
3. Update `url` and `checksum` in `tools/chocolateyinstall.ps1`

## Maintaining packages

1. Create a [Chocolatey account](https://community.chocolatey.org/account)
2. Create an API key and configure it locally:
   ```
   choco apikey -k <your-api-key> -s https://push.chocolatey.org/
   ```
3. Build the package:
   ```
   choco pack
   ```
4. Push the package:
   ```
   choco push [package].nupkg --source https://push.chocolatey.org/
   ```

## Contributing

1. Fork the repository
2. Create a feature branch from `main`
3. Make your changes
4. Build and test the package locally
5. Submit a Pull Request

> **Note:** The `main` branch is protected. All changes must go through a Pull Request.

## Workflows

This repository uses GitHub Actions for automated package publishing. To configure:

1. Create an [environment](https://github.com/HackproTm/choco-packages/settings/environments) called `Push-Packages`
2. Add the environment secret `CHOCOLATEY_API_KEY`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

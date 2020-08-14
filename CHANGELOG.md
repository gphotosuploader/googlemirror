# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/) and this project adheres to [Semantic Versioning](https://semver.org/).

## Unreleased
### Removed
- API definition file (`api/photoslibrary/v1/photoslibrary-api.json`) is removed in favor of [Photos Library API](https://developers.google.com/photos/library/reference/rest) documentation site.

## v0.3.7
### Added
- Support for [photoslibrary.albums.batchAddMediaItems](https://developers.google.com/photos/library/reference/rest/v1/albums/batchAddMediaItems). Thanks to [@albertvaka](https://github.com/albertvaka) ([#8][i8])

[i8]: https://github.com/gphotosuploader/googlemirror/pull/8

## v0.3.6
### Changed
- CI/CD is done by GitHub actions instead of Drone.
### Fixed
- Field `TotalMediaItems` on `Album` struct was referring to a non existing json field on the response. Thanks [@kelvie](https://github.com/kelvie) for fixing it. ([#6][i6])

[i6]: https://github.com/gphotosuploader/googlemirror/pull/6
 
## v0.3.5
### Added
- Go module support to deal with package dependencies.
- Include CI/CD integration to ensure proper build before merging.
- `Makefile` file to run CI/CD tasks.

### Changed
- `gensupport` package is downgraded to [v0.3.2](https://code.googlesource.com/google-api-go-client/+/refs/tags/v0.3.2).

### Fixed
- Imports to use the proper package's locations.

### Removed
- Google's `googleapi` package from this repository. [Original package](https://github.com/googleapis/google-api-go-client/tree/master/googleapi) will be used.

## v0.3.4
> This version is not usable, **UPGRADE TO THE NEWEST ONE**: v0.3.5.
### Added
- LICENSE file to root.

### Fixed
- Changed `googleapi` internal imports to use the packages published in this repository.

## v0.3.3
> This version is not usable, **UPGRADE TO THE NEWEST ONE**: v0.3.5.
### Added
- Google's `gensupport` and `googleapi` package from its [original repository](https://github.com/googleapis/google-api-go-client) to repair broken imports after [googleapis change](https://github.com/googleapis/google-api-go-client/commit/326e17a21103f4ccf44ac1b40587ce7bcdd58b14). ([#1][i1])

[i1]: https://github.com/gphotosuploader/googlemirror/issues/1

## v0.3.2
### Added
- Google's `photoslibrary` package from its [original repository](https://code.googlesource.com/google-api-go-client/) due to removal decision from maintainers. Using latest published tag [v0.3.2](https://code.googlesource.com/google-api-go-client/+/refs/tags/v0.3.2).

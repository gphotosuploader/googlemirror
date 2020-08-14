# googlemirror

![Build Status](https://github.com/gphotosuploader/googlemirror/workflows/Go/badge.svg)
[![GitHub release](https://img.shields.io/github/release/gphotosuploader/googlemirror.svg)](https://github.com/gphotosuploader/googlemirror/releases/latest)
[![GitHub](https://img.shields.io/github/license/gphotosuploader/googlemirror.svg)](LICENSE)

Google used to host a [Google Photos go client package](https://github.com/google/google-api-go-client/blob/master/photoslibrary/v1/photoslibrary-gen.go), but they deprecated it. It [was announced](https://code-review.googlesource.com/c/google-api-go-client/+/39951) by library maintainers, so we are mirroring own local copy in order to be able to call Google Photos API.

Missing parts of the current API has been implemented, see the [CHANGELOG](CHANGELOG.md) for more details.

## Documentation

- [Package photoslibrary](https://pkg.go.dev/github.com/gphotosuploader/googlemirror/api/photoslibrary/v1?tab=doc)

## License
 
We maintain the same original license that can be found in the [LICENSE](LICENSE) file.

## Mirror used by

- [Google Photos API Client](https://github.com/gphotosuploader/google-photos-api-client-go)
- [gphotos-uploader-cli](https://github.com/gphotosuploader/gphotos-uploader-cli)
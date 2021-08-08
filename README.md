# dockerfiles

A collection of Dockerfiles for creating custom docker images.

## How it works

Images are divided into 3 categories:

- CI: Images named `cimg-*` are based off the CircleCI cimg images and are intented for use in CircleCI jobs.
  These are extensions of the cimg images to add additional functionality.
- Build: Images suffixed with `build` are intended for build stages in dockerfiles. These typically have a wide
  range of installed software to allow for maximum flexibility and utility for building.
- Release: Images suffixed with `release` are intended for release stages in dockerfiles. These typically are
  very minimal and only have the bare software required for running programs. They are intended for production environments.

### Naming Scheme

All images have the following naming scheme:

```
<resource>:<version>[-variant]
```

- `<resource>` - The resource this image is for. In most cases this is a programming language or runtime, for example `go` or `node`.
  Prefixes can be added to specify the domain, for example `cimg-go` for go images specifically for CircleCI.
- `<version>` - The version of the resource. This is a SemVer that is either the full version, or a shorthand for either the minor or major version.
  Ex: `14`, `14.15`, and `14.15.3` are all valid versions.
- `[-variant]` - An optional variant tag. Generally, variant should be one of `build` or `release`.

## Development

Images can be built and run locally to test them.

Ex:

```sh
cd cimg-node:lts
docker build .
docker run -it <image> bash
```

### Creating a new image

Create a new directory that matches the image name. Then create a Dockerfile in the directory.

Ex: To create `go:1.15-release` run:

```
mkdir go:1.15-release
cd go:1.15-release
touch Dockerfile
```

Make sure to include a header comment which is the full name of the image, ex: `# cszatmary/go:1.15-release`.

### Publishing images

Images are automatically published to dockerhub on merges to main.

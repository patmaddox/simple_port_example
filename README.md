# Simple port example

This is an example of a really simple FreeBSD port.

It contains the source code for the project, as well as the port information, in the same repo.
This makes it really easy to develop the program, and test that the port installation works correctly.

## Typical FreeBSD package building/installation

The `port` directory contains all of the port information.
You would submit the contents of this directory to the ports tree, or include them in your own ports repo.
Or, you can just build directly from it!

`cd port && make package`

## Accelerated developer workflow

See `Justfile` for the setup.
[just](https://github.com/casey/just) is a simple command runner.

The main command is `just package`.
This builds a package, using your local directory for the source code!

In practice, the workflow is:

1. Develop.
2. Run `just package` to check package configuration as needed.
3. Tag a commit to release.
4. Update `port/Makefile` and `port/distinfo` with the new correct values.

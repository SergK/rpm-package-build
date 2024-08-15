# Hello World RPM Package

This repository contains the source code and build scripts for creating an RPM package for a simple "Hello World" application.

## Project Structure

- `Makefile`: Contains the build and clean commands for the project.
- `hello.spec`: The RPM spec file that defines the package metadata and build instructions.
- `.rpmlintrc.toml`: Configuration file for `rpmlint` to suppress specific warnings.
- `pkg/hello.sh`: The main script for the "Hello World" application.

## Prerequisites

- `rpmbuild`: RPM build tool.
- `rpmlint`: RPM lint tool.
- `make`: Build automation tool.

## Build Instructions

To build the RPM package, run the following command:

```sh
make rpm-build
```

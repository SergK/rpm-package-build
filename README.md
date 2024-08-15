# Hello World RPM Package

This repository contains the source code and build scripts for creating an RPM package for a simple "Hello World" application written in c.

## Project Structure

- `Makefile`: Contains the build and clean commands for the project.
- `hello.spec`: The RPM spec file that defines the package metadata and build instructions.
- `.rpmlintrc.toml`: Configuration file for `rpmlint` to suppress specific warnings.
- `hello.c`: The main program for the "Hello World" application.

## Prerequisites

- `gcc`: GNU Compiler Collection.
- `make`: Build automation tool.
- `rpmbuild`: RPM build tool.
- `rpmlint`: RPM lint tool.

## Build Instructions

To build the RPM package, run the following command:

```sh
make rpm-build
```

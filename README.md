# act-dotnet

A docker container for running .NET GitHub Actions locally using [act](https://github.com/nektos/act#readme).

The GitHub Action virtual images are pre-configured with more [installed software](https://github.com/actions/runner-images/blob/main/images/linux/Ubuntu2004-Readme.md) than act's containers. This container adds the relevant software for .NET environments. 

## Install

[Refer to act README](https://github.com/nektos/act#installation)

## Build

```bash
docker build -t act-dotnet .
```

## Run

```bash
act --platform ubuntu-latest=act-dotnet --remote-name origin --artifact-server-path artifacts
```

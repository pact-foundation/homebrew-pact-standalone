# homebrew-pact-standalone

The Pact Standalone public homebrew tap for MacOS / Linux homebrew formulae.

The easier way to install [`pact-standalone`](https://github.com/pact-foundation/pact-standalone) bundle of tools on your macOS/Linux machine using Homebrew.

## Installation

    brew tap pact-foundation/pact-standalone
    brew install pact-standalone

##  Supported Platforms

| OS           | Architecture | Supported |
| ------- | ------------ | --------- |
| OSX        | x86_64       | ✅         |
| OSX        | arm64 | ✅       |
| Linux    | x86_64       | ✅         |
| Linux    | arm64       | ✅         |


## Included tools

```
├── pact (central entry point to all binaries)
├── pact-broker
├── pactflow
├── pact_mock_server_cli
├── pact-stub-server
├── pact_verifier_cli
├── pact-plugin-cli
├── pact-message (legacy)
├── pact-mock-service (legacy)
├── pact-provider-verifier (legacy)
└── pact-stub-service (legacy)
```

### Previous versions

This repository was once named pact-ruby-standalone, if you have previously downloaded our tap, you can perform the following to remove and install the new package.

```sh
  brew uninstall pact-ruby-standalone
  brew untap pact-foundation/pact-ruby-standalone
  brew tap pact-foundation/pact-standalone
  brew install pact-standalone
```

The latest version, of the previous major release is provided, in case of issues with the latest version installed by default.

    brew install pact-ruby-standalone@1

#### Notes

For v1.x and below -

OSX ARM (M1/M2) Machines will require Rosetta tools, as the Ruby binaries as currently built for x86_64.

If you don't already have it installed, you can use the following command

```sh
sudo softwareupdate --install-rosetta --agree-to-license
```

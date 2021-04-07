# orbit-electron

[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg)](https://gitter.im/orbitdb/Lobby) [![Matrix](https://img.shields.io/badge/matrix-%23orbitdb%3Apermaweb.io-blue.svg)](https://riot.permaweb.io/#/room/#orbitdb:permaweb.io) 

> A distributed, peer-to-peer chat application built on [IPFS](http://ipfs.io)

Desktop App for [Orbit](https://github.com/orbitdb/orbit).

*Currently works in OSX and Linux. We're working on Windows support.*

**NOTE!** *Orbit is still more or less experimental. It means Orbit is currently ***not secure****, APIs will change and builds can break over the coming months. If you come across problems, it would help greatly to open issues so that we can fix them as quickly as possible.*

<img src="https://github.com/orbitdb/orbit-electron/raw/master/screenshots/orbit-electron-screenshot1.png" width="49%">
<img src="https://github.com/orbitdb/orbit-electron/raw/master/screenshots/orbit-electron-screenshot2.png" width="49%">

Built with:

- [orbit-web](https://github.com/orbitdb/orbit-web) - UI for the application which can be used as fully working Orbit client in the browser.
- [orbit-core](https://github.com/orbitdb/orbit-core) - Core Orbit communication library.
- [js-ipfs](https://github.com/ipfs/js-ipfs) - IPFS, a new peer-to-peer hypermedia protocol.
- [electron](https://github.com/electron/electron) - Electron

See also:

- [orbit-textui](https://github.com/orbitdb/orbit-textui) - Terminal client prototype for Orbit.
- [orbit-db](https://github.com/orbitdb/orbit-db) - Serverless, p2p database that orbit-core uses to store its data.
- [IPFS](https://ipfs.io) - IPFS

## Table of Contents

- [Run](#run)
	- [Download Binaries](#download-binaries)
	- [Requirements](#requirements)
	- [Get the source code](#get-the-source-code)
	- [Start the App](#start-the-app)
	- [Development](#development)
  	- [Run](#run)
	- [Build](#build)
		- [Release](#release)
	- [Distributable Packages](#distributable-packages)
- [Contributing](#contributing)
- [License](#license)

## Run

### Download Binaries

*Orbit binaries will soon be available from [dist.ipfs.io](https://dist.ipfs.io/). Meanwhile, you'll have to build the application from the source code.*

### Requirements
- [Node.js v6.x.x](http://nodejs.org/)
- [npm v3.x.x](https://npmjs.com)
- g++, gcc, make, python 2

**NOTE:** Orbit requires a newer version of gcc to compile crypto libraries. `gcc 6.2.1` has been tested successfully, `gcc 4.9.2` is known to fail at runtime.

Standard `gcc` versions for various distros are listed below:
Arch Linux `gcc 6.2.1`
Debian Stretch `gcc 6.2.1`
Debian Jessie `gcc 4.9`
RHEL7 `gcc 4.8`
Ubuntu 16.04 LTS `gcc 5.3+`
OSX Uses `CLANG`, not `gcc`. Verification needed.

### Get the source code

```
git clone https://github.com/orbitdb/orbit-electron.git
cd orbit-electron/
```

### Start the App

```
make start
```

or

```
npm install
npm start
```

### Development

### Run

*NOTE! Before running this command, make sure you have [orbit-web](https://github.com/orbitdb/orbit-web#run) development server running*

```
npm run dev
```

### Build

#### Release

```
make build
```

or

```
npm run build
```

*This will create binaries for OSX and Linux in `bin/`*

### Distributable Packages

```
make build
make dist
```

*This will create `bin/dist/orbit_master_darwin-amd64.tar.gz` and `bin/dist/orbit_master_linux-amd64.tar.gz` and add them to IPFS.*

Note: electron names the folders after the arch, and uses the `x64` nomenclature instead of `amd64`. They are the same thing; we create tarballs with `amd64` to match the golang distributions on [ipfs/distributions](https://github.com/ipfs/distributions).

## Contributing

If you think this could be better, please [open an issue](https://github.com/orbitdb/orbit-electron/issues/new)!

Please note that all interactions in [@orbitdb](https://github.com/orbitdb) fall under our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

[MIT](LICENSE) © 2015-2018 Protocol Labs Inc., Haja Networks Oy

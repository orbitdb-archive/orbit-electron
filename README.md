# orbit-electron

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)
[![Project Status](https://badge.waffle.io/haadcode/orbit.svg?label=In%20Progress&title=Roadmap)](http://waffle.io/haadcode/orbit)

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

## Run

### Download Binaries

*Orbit binaries will soon be available from [dist.ipfs.io](https://dist.ipfs.io/). Meanwhile, you'll have to build the application from the source code.*

### Requirements
- [Node.js v6.x.x](http://nodejs.org/)
- [npm v3.x.x](https://npmjs.com)
- g++, gcc, make, python 2

### Get the source code

```
git clone https://github.com/orbitdb/orbit-electron/orbit-electron.git
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

We would be happy to accept PRs! If you want to work on something, it'd be good to talk beforehand to make sure nobody else is working on it. You can reach us on IRC #ipfs on Freenode, or in the comments of the [issues section](https://github.com/orbitdb/orbit/issues).

A good place to start are the issues labelled ["help wanted"](https://github.com/orbitdb/orbit/issues?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted%22+sort%3Areactions-%2B1-desc) or the project's [status board](https://waffle.io/haadcode/orbit).

## License

[MIT](LICENSE)

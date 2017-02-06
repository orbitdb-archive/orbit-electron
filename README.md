# orbit-electron

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)

> A distributed, peer-to-peer chat application built on [IPFS](http://ipfs.io)

Desktop App for Orbit.

Built with the following packages:

- [orbit-web](https://github.com/orbitdb/orbit-web) - UI for the application.
- [orbit-core](https://github.com/orbitdb/orbit-core) - Core Orbit communication library.
- [orbit-db](https://github.com/orbitdb/orbit-db) - Serverless, p2p database that orbit-core uses to store its data.

**This repo is currently being transfered from https://github.com/haadcode/orbit and is work in progress. YMMV.**

<img src="https://raw.githubusercontent.com/haadcode/orbit/master/screenshots/screenshot4%202016-04-16.png" width="80%">
<img src="https://raw.githubusercontent.com/haadcode/orbit/master/screenshots/screenshot7%202016-09-02.png" width="50%">
<img src="https://raw.githubusercontent.com/haadcode/orbit/master/screenshots/screenshot6%202016-04-17.png" width="50%">

## Project Status

**Status:** *In active development*

**NOTE!** *Orbit is still more or less experimental. Things will change and break over the coming months, but we're pushing towards to stabilize the code base. If you come across problems, it would help greatly to open issues so that we can fix them as quickly as possible.*

Check the project's [roadmap](https://github.com/haadcode/orbit/blob/master/ROADMAP.md) to see what's happening at the moment and what's planned next.

[![Project Status](https://badge.waffle.io/haadcode/orbit.svg?label=In%20Progress&title=In%20Progress)](http://waffle.io/haadcode/orbit)
[![CircleCI Status](https://circleci.com/gh/haadcode/orbit.svg?style=shield&circle-token=158cdbe02f9dc4ca4cf84d8f54a8b17b4ed881a1)](https://circleci.com/gh/haadcode/orbit)

See also the [CHANGELOG](https://github.com/haadcode/orbit/blob/master/CHANGELOG.md) for what's new!

If you would like to participate in designing what Orbit is as a product, please join us in [Product Design for Orbit](https://github.com/haadcode/orbit/issues/149) issue.

## Run

### Requirements
- [Node.js v6.x.x](http://nodejs.org/)
- [npm v3.x.x](https://npmjs.com)
- g++, gcc, make
- python 2

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

*This will create `bin/dist/orbit-darwin-x64.tar.gz` and `bin/dist/orbit-linux-x64.tar.gz` and add them to IPFS.*

## Contributing

[![](https://img.shields.io/badge/freenode-%23ipfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23ipfs)

We would be happy to accept PRs! If you want to work on something, it'd be good to talk beforehand to make sure nobody else is working on it. You can reach us on IRC #ipfs on Freenode, or in the comments of the [issues section](https://github.com/haadcode/orbit/issues).

A good place to start are the issues labelled ["help wanted"](https://github.com/haadcode/orbit/issues?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted%22+sort%3Areactions-%2B1-desc) or the project's [status board](https://waffle.io/haadcode/orbit).

## License

[MIT](LICENSE) © 2017 haadcode

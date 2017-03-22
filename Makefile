all: deps

deps:
	npm install
	@echo "Done!"
	@echo "Run 'make build' to build orbit-electron app stand-alone binary."
	@echo "Run 'npm run dev' to start the app in developer mode."
	@echo "Run 'make start' to start the app."

build: deps
	npm run build
	@echo "Build success!"
	@echo "Build is in 'bin/'"
	@echo "Run 'make dist' to build the distribution packages for orbit-electron app."

start: deps
	npm start

package:
	rm -rf bin/dist/
	mkdir -p bin/dist/
# Note: This is used by https://github.com/ipfs/distributions/blob/master/site/public/_js/_platform.js#L27
# The naming scheme comes from that.
	cd bin/ && tar -zcf dist/orbit_$(shell node -pe "require('./package.json').version")_darwin-amd64.tar.gz Orbit-darwin-x64/
	cd bin/ && tar -zcf dist/orbit_$(shell node -pe "require('./package.json').version")_linux-amd64.tar.gz Orbit-linux-x64/
	@echo "Distribution packages are in: bin/dist/"

dist: package
	cd bin/dist/ && ipfs add -r .

clean:
	rm -rf orbit-dev-data/
	rm -rf .tmp/
	rm -rf node_modules/
	rm -rf bin/

.PHONY: start

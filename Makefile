
ADDON = build/default/canvas.node

$(ADDON): src/*.cc
	node-gyp configure build

test: $(ADDON)
	@./node_modules/.bin/expresso \
		-I lib \
		test/*.test.js

test-server: $(ADDON)
	@node test/server.js

benchmark:
	@node benchmarks/run.js

clean:
	node-gyp distclean

.PHONY: test test-server benchmark clean
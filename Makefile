fmt :
	rustfmt src/main.rs
	rustfmt tests/integration_test.rs

test : fmt
	cargo test

build : test
	cargo run

deploy: test
	cargo deploy -r

clean :
	rm -R target

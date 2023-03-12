fmt :
	rustfmt src/main.rs
	rustfmt tests/integration_test.rs

test : fmt
	cargo test

build : test
	cargo run -- --input files/input/5km.csv --output files/ouput/5k_dist.csv

deploy: test
	cargo build -r

clean :
	rm -R target

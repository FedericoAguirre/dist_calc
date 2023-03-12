fmt :
	rustfmt src/main.rs
	rustfmt calculation/src/lib.rs
	rustfmt tests/integration_test.rs

test : fmt
	cargo test --package calculation

build : test
	cargo run -- --input files/input/5km.csv --output files/ouput/5k_dist.csv

deploy: test
	cargo build -r
	./target/release/dist_calc --help

clean :
	rm -R target

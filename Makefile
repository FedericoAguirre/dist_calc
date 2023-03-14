fmt :
	rustfmt src/main.rs
	rustfmt src/lib.rs
	rustfmt tests/unit_tests.rs

test : fmt
	cargo test

build : test
	cargo run -- --input files/input/5km.csv --output files/ouput/5k_dist.csv

deploy: test
	cargo build -r
	./target/release/dist_calc --help

clean :
	rm -R target

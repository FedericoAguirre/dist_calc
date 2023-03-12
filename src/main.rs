use clap::Parser;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// Input file to calculate distance from
    #[arg(short, long)]
    input: String,

    /// Output file to save distance in
    #[arg(short, long)]
    output: String,
}

fn main() {
    let args = Args::parse();

    println!("Input file: {}", args.input);
    println!("Output file: {}", args.output);
}

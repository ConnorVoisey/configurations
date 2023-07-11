# Rust Setup info

## Install rust.

```sh
curl https://sh.rustup.rs -sSf | sh
```
## Cargo watch

[Cargo watch](https://docs.rs/crate/cargo-watch/3.2.0/source/README.md) is like nodemon but for rust (on any file change rerun the binary). It can also be used for non rust projects. 

Install

```sh
cargo install cargo-watch
```

Example usage - runs project on file change

```sh
cargo watch -x r
```

postgres dependencies

```sh
apt install pkg-config
```

libssl-dev

```sh
sudo apt-get install libssl-dev
```

Rust might already be installed. To check, run 
`rustc --version`{{execute}}

If the output is showing something like `rustc 1.60.0 (7737e0b5c 2022-04-04)` you are good.

If not there are two options. Actually, you could also download or build it from source.

# Using `apt-get`

`sudo apt-get --install-suggests install rustc cargo`

# Using `rustup`
Rustup allows you to stay more up-to-date than using you distribution's package manager.

- `sudo snap install rustup --classic`
- `rustup toolchain install default`


Now check the version with `rustc --version`
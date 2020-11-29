export PATH="$HOME/.cargo/bin:$PATH"
if command -v asdf &>/dev/null
then
  rust_version=$(asdf current rust | tr -s ' ' | cut -d ' ' -f 2)
  rust_bin=$(asdf where golang ${GO_VERSION})/bin
  export PATH="$rust_bin:$PATH"
fi

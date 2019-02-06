if command -v asdf &>/dev/null
then
  export GO_VERSION=$(asdf current golang | cut -d ' ' -f 1)
  export GOROOT=$(asdf where golang ${GO_VERSION})/go
  export PATH="$GOROOT/bin:$PATH"
  export GOPATH=$HOME/dev/workspace/go
  export PATH="$PATH:$GOPATH/bin"
fi

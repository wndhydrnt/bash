if command -v asdf &>/dev/null
then
  export GO_VERSION=$(asdf current golang | tr -s ' ' | cut -d ' ' -f 2)
  export GOROOT=$(asdf where golang ${GO_VERSION})/go
  export PATH="$GOROOT/bin:$PATH"
  export GOPATH=$HOME/dev/workspace/go
  export PATH="$PATH:$GOPATH/bin"
  export GOPROXY=direct
fi

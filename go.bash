if command -v asdf &>/dev/null
then
  GO_VERSION=$(asdf current golang | tr -s ' ' | cut -d ' ' -f 2)
  export GO_VERSION
  GOROOT=$(asdf where golang ${GO_VERSION})/go
  export GOROOT
  export PATH="$GOROOT/bin:$PATH"
  export GOPATH=$HOME/dev/workspace/go
  export PATH="$PATH:$GOPATH/bin"
  export GOPROXY=direct
fi

alias gotnc='go test -coverprofile=coverage.out ./... && go tool cover -html=coverage.out'

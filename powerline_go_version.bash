function __powerline_go_version_prompt {
  local go_version=""

  if command -v go &>/dev/null && [[ -f "$PWD/Gopkg.toml" ]]
  then
    go_version=$(go version | cut -d ' ' -f 3)
  fi

  [[ -n "${go_version}" ]] && echo "${go_version}|71"
}

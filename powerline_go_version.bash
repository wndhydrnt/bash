function __powerline_go_version_prompt {
  local go_version=""

  if command -v go &>/dev/null; then
    local go_file_count=$(find . -name '*.go' -maxdepth 1 | wc -l)
    if [[ "${go_file_count}" -gt "0" ]]; then
      go_version=$(go version | cut -d ' ' -f 3)
    fi
  fi

  [[ -n "${go_version}" ]] && echo "${go_version}|71"
}

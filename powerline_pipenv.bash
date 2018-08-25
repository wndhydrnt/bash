function __powerline_pipenv_prompt {
  local python_version=""

  if command -v pipenv &>/dev/null && [[ -f "$PWD/Pipfile" ]]
  then
    local venv_path="$(pipenv --venv)"
    python_version="$(${venv_path}/bin/python --version)"
  fi

  [[ -n "${python_version}" ]] && echo "${python_version}|71"
}

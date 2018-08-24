function __powerline_k8s_prompt {
  local k8s_version=""

  if command -v kubectl &>/dev/null
  then
    k8s_version=$(kubectl config current-context)
  fi

  [[ -n "${k8s_version}" ]] && echo "${k8s_version}|141"
}

POWERLINE_RIGHT_PROMPT="k8s in_vim clock battery user_info"

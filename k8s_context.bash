function k8s_context_prompt {
  local k8s_context=""

  if command -v kubectl &>/dev/null
  then
    k8s_context=$(kubectl config current-context 2>/dev/null)
  fi

  [[ -n "${k8s_context}" ]] && echo "${k8s_context}"
}

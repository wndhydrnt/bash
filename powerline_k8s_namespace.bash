function __powerline_k8s_namespace_prompt {
  local k8s_namespace=""

  if command -v kubectl &>/dev/null && command -v jq &>/dev/null
  then
    local k8s_context=$(kubectl config current-context)
    k8s_namespace=$(kubectl config view -o json | jq -r ".contexts[] | select(.name == \"${k8s_context}\") | .context.namespace")
    if [[ -z "${k8s_namespace}" ]]; then
      k8s_namespace="default"
    fi
  fi

  [[ -n "${k8s_namespace}" ]] && echo "${k8s_namespace}|201"
}

function k8s_config_prompt {
  [[ -n "${KUBECONFIG}" ]] && echo " (${KUBECONFIG})"
}

if command -v minikube &>/dev/null; then
  if [[ ! -f "${HOME}/.minikube-completion" ]]; then
    minikube completion bash > "${HOME}/.minikube-completion"
  fi
  source "${HOME}/.minikube-completion"
fi

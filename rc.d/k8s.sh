### Kubernetes ###

if command -v minikube > /dev/null; then
  alias k='minikube kubectl --'
elif command -v kubectl > /dev/null; then
  alias k='kubectl'
else
fi


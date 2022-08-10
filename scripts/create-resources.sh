oc new-project aap

# -- Pre-create any needed test resources

# Create pull secret for b.r.r.io and r.r.io


echo "Creating redhat-operators-pull-secret"

kubectl apply -f - <<EOF
apiVersion: v1
data:
  .dockerconfigjson: ewoJImF1dGhzIjogewoJCSJicmV3LnJlZ2lzdHJ5LnJlZGhhdC5pbyI6IHsKCQkJImF1dGgiOiAiY0hOcExXRnVjMmxpYkdVdGRHOTNaWEk2TUhCRFRIUkdXazlYVDNaTlpFdGZVMjVZWm5kbmVHRmFiVVpWU20xWFVGRT0iCgkJfSwKCQkicmVnaXN0cnkucmVkaGF0LmlvIjogewoJCQkiYXV0aCI6ICJjSE5wTFdGdWMybGliR1V0ZEc5M1pYSTZNSEJEVEhSR1drOVhUM1pOWkV0ZlUyNVlabmRuZUdGYWJVWlZTbTFYVUZFPSIKCQl9Cgl9Cn0K
kind: Secret
metadata:
  name: redhat-operators-pull-secret
type: kubernetes.io/dockerconfigjson
EOF


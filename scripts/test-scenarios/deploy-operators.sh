
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


# -- Create deployment



# -- Sanity Checks & Logs Checks
# wait for ~ 6 minutes
sleep 360

# check pods for any not in the "Running" state


# scrape logs of Controller web & task containers for unusual errors


# scrape logs of Hub web, api, content, worker containers for unusual errors


# scrape resources for imagePullBackoff errors


# get CSV and subscription

# print out the catalog-image the subscription was installed from

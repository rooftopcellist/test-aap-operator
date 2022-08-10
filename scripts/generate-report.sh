# -- Sanity Checks & Logs Checks

# check pods for any not in the 'Running' state

echo $'\n-- Showing pods'

oc get pods

echo $'\n-- Showing only pods not in the Running state'
oc get pods --field-selector status.phase!='Running' -o=jsonpath='{.items[*].metadata.name}'

# scrape logs of Controller web & task containers for unusual errors


# scrape logs of Hub web, api, content, worker containers for unusual errors


# scrape resources for imagePullBackoff errors


# get CSV and subscription

echo $'\n-- Showing subscriptions'
oc get subscription

echo $'\n-- Showing CSVs'
oc get csv


# print out the catalog-image the subscription was installed from

# -- Install AAP Operator

# create subscription object



# -- Create deployment

# create an AutomationController CR


# create an AutomationHub CR


# -- Sanity Checks & Logs Checks
# wait for ~ 6 minutes
sleep 360

# check pods for any not in the "Running" state


# scrape logs of Controller web & task containers for unusual errors


# scrape logs of Hub web, api, content, worker containers for unusual errors


# scrape resources for imagePullBackoff errors


# get CSV and subscription

# print out the catalog-image the subscription was installed from

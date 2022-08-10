# -- Install AAP Operator

# -- Create Catalog Source

oc create -f files/catalog-source.yml

# create operator group

oc create -f files/operator-group.yml

# create subscription object

oc create -f files/subscription.yml

# -- Create deployment

# create an AutomationController CR
oc create -f files/controller/controller-cr.yml

# create an AutomationHub CR
oc create -f files/hub/hub-cr.yml


echo "The AAP Operator has been installed on your cluster and the Controller and Hub custom resources have been deployed"

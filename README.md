# test-aap-operator
Collection of scripts and playbooks to test the AAP and upstream Operators

### Usage

Complete script uses the default ansible-automation-platform and aap namespace to do the following:

* clean up existing resources from old deployments (`./clean-operators.sh`)
* create a catalog source (default is nightly 2.2.x-latest)
* create a subscription to install the AAP Operator (default is stable-2.2 channel in aap namespace)
* pre-create any needed test resources (`./create-resources.sh`)
* create an AutomationController CR
* create an AutomationHub CR
* wait until the deployments are complete (~6 minutes)
* scrape logs and resources to build a report


1. Log into your cluster

```
oc login
```

2. Run script

```
./test-aap-operator.sh
```

> Note that currently this will blow away anything in those 2 namespaces, and that if you specify the cluster-scoped bundle, it could conflict with other deployments on your cluster.

# Clean up the ansible-autoamtion-platform namespace

USER_NS=aap

oc delete automationhub --all -n ansible-automation-platform
oc delete automationhub --all -n ${USER_NS}

oc delete automationcontroller --all -n ansible-automation-platform
oc delete automationcontroller --all -n ${USER_NS}

oc delete secrets --all -n ansible-automation-platform
oc delete secrets --all -n ${USER_NS}

oc delete sa --all -n ansible-automation-platform
oc delete secrets --all -n ${USER_NS}

oc delete pvc --all -n ansible-automation-platform
oc delete pvc --all -n ${USER_NS}

oc delete operators --all -n ansible-automation-platform
oc delete operators --all -n ${USER_NS}

oc create -f 03_triggers/02_template.yaml
oc create -f 03_triggers/01_binding.yaml
oc create -f 03_triggers/03_event_listener.yaml
oc expose svc el-vote-app

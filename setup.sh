oc new-project pipelines-tutorial
oc get serviceaccount pipeline
oc create -f 01_pipeline/01_apply_manifest_task.yaml
oc create -f 01_pipeline/02_update_deployment_task.yaml
oc create -f 01_pipeline/04_pipeline.yaml
echo "List of tasks:"
tkn task ls
echo "List of pipelines:"
tkn pipeline ls
sleep 30
oc create -f 01_pipeline/03_resources.yaml
echo "List of resources:"
tkn resource ls

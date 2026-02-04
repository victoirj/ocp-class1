helm upgrade workshop ./workshop-chart --set versions.stable.replicaCount=3 --set versions.canary.replicaCount=1 --set versions.canary.enabled=true -n ex-helm
exit 0
sleep 60
helm upgrade workshop ./workshop-chart --set versions.stable.replicaCount=0 --set versions.canary.replicaCount=3 --set versions.canary.enabled=true -n ex-helm

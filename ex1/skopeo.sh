REGISTRY="default-route-openshift-image-registry.apps-crc.testing"
TOKEN=$(oc whoami -t)

curl -s -k -H "Authorization: Bearer $TOKEN" https://$REGISTRY/v2/_catalog | \
jq -r '.repositories[]' | \
while read repo; do 
    echo "--- Image: $repo ---"; 
    skopeo list-tags --tls-verify=false docker://$REGISTRY/$repo; 
done

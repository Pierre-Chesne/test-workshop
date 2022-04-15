RG=RG-Runner
LOCATION=EastUS2
BASE_VM=VM-Runner
#SSH_KEY_PATH=
ADMIN_USERNAME=pierrc
BASE_DNS=runner

az group create \
    --location $LOCATION \
    --resource-group $RG

az vm create \
    --resource-group $RG \
    --name $BASE_VM \
    --image "canonical:0001-com-ubuntu-server-focal:20_04-lts:latest" \
    --size Standard_DS1_v2 \
    --ssh-key-values "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCm9OdKa3kFqUd7QlgytUnBTwKMmmwpK7FqsZu8qXX/HSSP1PlhyTLOo7oojv6uOxwmOZqnaNYt+QlxCCREBrtWUvoZUAcvXSQdDzcyFPSHQM3A2Rtnjyr+FSBZaeIiJapl5ujrTWyIZPnepLlJEjYbmTC0Ul8ti10kolxU9pGSKTdkHAKIzR9HeqWishFlF8S8039Mt+SUC/2p0OC3+J2mV2HL9ccPXyUE6ShOPAT04MGuUyNXEO6NgZGG7jFYsva5uz8wR7roih1hJu9icP0hiw8TT47LN7686zTi58zQfATd7pPpnNo46BnJ4e28d6aWyF96uav249H+w4I0Xhw5gFBufEgX1K8y3SjEY0ilzwd1gQdDABcbePWVDHj+njUhX2VcAIHBLJ4LRi5t6bupDCQzn6mAt2l7ZWgOtlBKBWjcAj886RCqKCz+is1rut0lJBh3dq0acWEzG42/k+IlwVCq88Ju5nvAbTdeX5bW8gpFIuhVxZwllfuxFCxxDuc=" \
    --admin-username $ADMIN_USERNAME \
    --authentication-type ssh \
    --public-ip-address-dns-name $BASE_DNS
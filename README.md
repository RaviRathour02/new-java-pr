Important steps:
1. Before azure login code , add azure service principle credentials in you github secrets
   - for generating secret run below command in azure cli:
        az ad sp create-for-rbac --name "myApp" --role contributor --scopes /subscriptions/<subscription-id> --sdk-auth

   - after this commmand , you will get a json code , copy it and add to your github credentials , with name AZURE_CREDENTIALS
  
 2. Before deployment, create a secret acr-to-aks , and add this secret to your deployment file as image pull secret
    - for generation acr-to-aks secret run command in azure cli:
          kubectl create secret docker-registry <secret-name> \
            --docker-server=<your-acr-name>.azurecr.io \
            --docker-username=<clientId> \
            --docker-password=<clientSecret> 

// skip-dir = []


projects = [
    {
        dir = "."
        workspaces = [
            {
                name = "staging"
                env-vars = {
                    "TF_VAR_region": "Brazil"
                }
            },
            {
                name = "default"
                terraform-vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/default.tfvars"]
            }
        ]
    },
] 
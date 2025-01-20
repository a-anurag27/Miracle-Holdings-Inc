// skip-dir = [ "InvestTrack", "InvestTrack/InstitutionalTrack", "CostInsight", ".", "CreditBoost"]


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
    {
        dir = "CostInsight"
        workspaces = [
            {
                name = "default"
                terraform-vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/CostInsight/var-values/default.tfvars.json"]
            }
        ]
    }
] 
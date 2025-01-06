skip-dirs = ["CostInsight", "CreditBoost", "InvestTrack", "InvestTrack/InstitutionalTrack"]

projects {
  project "Miracle-Holdings-Inc" {
    workspace "default" {
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/default.tfvars"]
    }

    workspace "staging" { 
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/staging.tfvars"]
    }
  }
}

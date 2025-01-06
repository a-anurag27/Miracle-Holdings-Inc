// skip-dirs = ["CostInsight"]

projects {
  project "Miracle-Holdings-Inc" {
    workspace "default" {
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/default.tfvars"]
    }

    workspace "staging" { 
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/staging.tfvars"]
    }
  }

  project "Miracle-Holdings-Inc/CostInsight" {
    workspace "default" {
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/CostInsight/var-values/default.tfvars"]
    }
  }
}

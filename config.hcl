skip-dirs = ["CostInsight", "InvestTrack", "."]

projects {

  // can also give project as . for root level or full abs path
  project "." {

  
    workspace "default" {
      env-vars = {
        "TF_VAR_environment": "anurag"
      }
    }
  

    workspace "staging" { 
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/var-values/staging.tfvars"]
    }
  }


  project "CostInsight" {
    workspace "default" {
      terraform_vars = ["/Users/anurag/Projects/Miracle-Holdings-Inc/CostInsight/var-values/default.tfvars.json"]
    }
  }

}

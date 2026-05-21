output "vpc" {
  value = {
    (local.vpc.name) = {
      id = module.network.vpc.id
    }
  }
}

# trigger
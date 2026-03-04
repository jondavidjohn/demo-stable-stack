terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

resource "random_pet" "one" {
  keepers = {
    stable = "v1"
  }
  length = 4
}

resource "random_pet" "two" {
  keepers = {
    stable = "v1"
  }
  length = 4
}

resource "random_pet" "three" {
  keepers = {
    stable = "v1"
  }
  length = 4
}

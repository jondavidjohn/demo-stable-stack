terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "v1" {
  type = string
}

variable "v2" {
  type = string
}

variable "v3" {
  type = string
}

variable "v4" {
  type = string
}

variable "v5" {
  type = string
}

variable "v6" {
  type = string
}

variable "v7" {
  type = string
}

variable "v8" {
  type = string
}

variable "v9" {
  type = string
}

variable "v10" {
  type = string
}

variable "v11" {
  type = string
}

variable "v12" {
  type = string
}

variable "v13" {
  type = string
}

variable "v14" {
  type = string
}

variable "v15" {
  type = string
}

variable "v16" {
  type = string
}

variable "v17" {
  type = string
}

variable "v18" {
  type = string
}

variable "v19" {
  type = string
}

variable "v20" {
  type = string
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

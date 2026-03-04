required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "random" "this" {}

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

component "thing_one" {
  source = "./random"
  providers = {
    random = provider.random.this
  }
  inputs = {
    v1 = var.v1
    v2 = var.v2
    v3 = var.v3
    v4 = var.v4
    v5 = var.v5
    v6 = var.v6
    v7 = var.v7
    v8 = var.v8
    v9 = var.v9
    v10 = var.v10
    v11 = var.v11
    v12 = var.v12
    v13 = var.v13
    v14 = var.v14
    v15 = var.v15
    v16 = var.v16
    v17 = var.v17
    v18 = var.v18
    v19 = var.v19
    v20 = var.v20
  }
}

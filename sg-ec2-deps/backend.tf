terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "terraform-mpr"
        region = "us-east-1"
        profile = "default"
    }
}
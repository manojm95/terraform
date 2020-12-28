data "terraform_remote_state" "sg" {
    backend = "s3"

    config = {
        region = "us-east-1"
        profile = "default"
        key = "terraform/tfstate.tfstate"
        bucket = "terraform-mpr"
    }
}
provider "aws" {
  version = "~> 2.0"
#  access key = "${var.access_key}"
# secret key = "${var.secret_key}"
  region  = "${var.aws_region}"
}

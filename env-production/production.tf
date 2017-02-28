data "terraform_remote_state" "prod_state" {
  backend = "s3"
  config {
    bucket = "${var.tf_s3_bucket}"
    region = "${var.region}"
    key    = "${var.prod_state_file}"
  }
}

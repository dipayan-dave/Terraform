terraform {
  backend "s3" {
    bucket = "terraform070823"
    key = "terraform070823/backend"
  }
}
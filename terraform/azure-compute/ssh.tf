resource "tls_private_key" "azure" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

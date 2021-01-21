variable "organization_admins" {
  type        = list(string)
  description = "GitHub Organization Admins"
  default = [
    "ksatirli", # Kerim Satirli
    "onlydole"  # Taylor Dolezal
  ]
}

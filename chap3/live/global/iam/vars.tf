variable "user_names" {
  description = "Create iam users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

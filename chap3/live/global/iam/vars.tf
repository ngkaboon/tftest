variable "user_names" {
  description = "Create iam users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

variable "give_neo_cloudwatch_full_access" {
  description = "If 1, neo gets full access to Cloudwatch. If 0, neo gets read only access to Cloudwatch."
}

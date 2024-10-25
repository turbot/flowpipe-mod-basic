variable "default_notifier" {
  type        = notifier
  description = "The notifier to use for sending notifications."
  default     = notifier.default
}
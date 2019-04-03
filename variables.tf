variable "name" {
  type        = "string"
  description = "The name of the webhook."
}

variable "target_pipeline" {
  type        = "string"
  description = "The name of the pipeline."
}

variable "target_action" {
  type        = "string"
  description = "The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline."
  default     = "Source"
}

variable "secret_token" {
  type        = "string"
  description = "The shared secret for the GitHub repository webhook."
}

variable "repository" {
  type        = "string"
  description = "The repository of the webhook."
}

variable "events" {
  type        = "list"
  description = "A list of events which should trigger the webhook."
  default     = ["push"]
}

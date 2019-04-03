output "id" {
  description = "The CodePipeline webhook's ARN."
  value       = "${aws_codepipeline_webhook.github.id}"
}

output "url" {
  description = "The CodePipeline webhook's URL. POST events to this endpoint to trigger the target."
  value       = "${aws_codepipeline_webhook.github.url}"
}

output "github_url" {
  description = "URL of the webhook."
  value       = "${github_repository_webhook.aws_codepipeline.url}"
}

resource "aws_codepipeline_webhook" "github" {
  name            = "${var.name}"
  authentication  = "GITHUB_HMAC"
  target_action   = "${var.target_action}"
  target_pipeline = "${var.target_pipeline}"

  authentication_configuration {
    secret_token = "${var.secret_token}"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }
}

resource "github_repository_webhook" "aws_codepipeline" {
  repository = "${var.repository}"

  name = "web"

  configuration {
    url          = "${aws_codepipeline_webhook.github.url}"
    content_type = "form"
    insecure_ssl = "true"
    secret       = "${var.secret_token}"
  }

  events = "${var.events}"
}

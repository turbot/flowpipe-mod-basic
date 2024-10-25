pipeline "hello_world" {
  title = "Hello World"
  description = "A simple pipeline that prints 'Hello, World!' to your chosen notifier."

  param "notifier" {
    type        = notifier
    description = "The notifier to use for sending notifications."
    default     = var.default_notifier
  }

  step "message" "send" {
    notifier = param.notifier
    text     = "Hello, World!"
  } 
}
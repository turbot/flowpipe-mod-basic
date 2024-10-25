pipeline "ask_question" {
  title = "Ask Question"
  description = "A simple pipeline that asks a question to your chosen notifier."

  param "notifier" {
    type        = notifier
    description = "The notifier to use for sending notifications."
    default     = var.default_notifier
  }

  step "input" "ask" {
    notifier = param.notifier
    type     = "button"
    prompt   = "Which option do you choose?"
    options  = [
      { label = "Option 1", value = "option1", style = "ok" },
      { label = "Option 2", value = "option2" },
      { label = "Option 3", value = "option3", style = "alert" }
    ]
  }
}
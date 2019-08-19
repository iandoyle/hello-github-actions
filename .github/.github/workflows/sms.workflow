workflow "New workflow" {
  on = "push"
  resolves = ["nexmo-community/nexmo-sms-action@master"]
}

action "nexmo-community/nexmo-sms-action@master" {
  uses = "nexmo-community/nexmo-sms-action@master"
  secrets = ["NEXMO_API_KEY", "NEXMO_API_SECRET", "NEXMO_TO", "NEXMO_NUMBER"]
  args = "$NEXMO_TO Hey! Just letting you know that I, $GITHUB_ACTOR, just pushed some code."
}

# GitHub Actions for Slack

Send message to Slack app using Incoming Webhooks ([more info](https://api.slack.com/incoming-webhooks))

## Usage

An example workflow to post a message to a Slack app follows:

```hcl
action "Slack" {
  uses = "rcornu/actions/slack@master"
  args = ":wave: Hello from Github Actions"
  env = {
    CHANNEL = "general"
    ICON = ":octocat:"
    USERNAME = "Github"
  }
  secrets = ["WEBHOOK_URL"]
}
```

### Secrets

- `WEBHOOK_URL` – **Required** The Slack Incoming Webhook URL used to post messages ([more info](https://api.slack.com/incoming-webhooks))

### Environment variables

- `CHANNEL`- **Optional** To specify a channel (public or private), defaults to `general`
- `ICON`- **Optional** To specify a user emoji icon, defaults to `:octocat:`
- `USERNAME`- **Optional** To specify a user name, defaults to `Github`
# GitHub Actions for Wait

Wait until a network connection (TCP or UDP) is open

## Usage

An example workflow to wait until a network connection is open to `google.com` follows:

```hcl
action "Wait" {
  uses = "rcornu/actions/wait@master"
  args = ""
  env = {
    INTERVAL = 5
    HOST = "google.com"
    PORT = 80
    TIMEOUT = 300
  }
}
```

### Environment variables

- `INTERVAL`- **Optional** To specify an interval between tries, defaults to `5` seconds
- `HOST`- **Optional** To specify connection host, defaults to `google.com`
- `PORT`- **Optional** To specify connection port, defaults to `80`
- `TIMEOUT`- **Optional** To specify a timeout, defaults to `300` seconds
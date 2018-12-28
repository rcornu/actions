# GitHub Actions for Sleep

Sleep for a specified number of seconds

## Usage

An example workflow to sleep for a specified number of seconds follows:

```hcl
action "Sleep" {
  uses = "rcornu/actions/sleep@master"
  args = "15"
}
```
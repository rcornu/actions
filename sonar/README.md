# GitHub Actions for SonarQube (scanner)

This Action for SonarQube (scanner) enables arbitrary actions with the SonarQube scanner, including code analysis and publishing report to a database.
([more info](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner)) 

## Usage

An example workflow to launch a code analysis follows:

```hcl
action "Sonar" {
  uses = "rcornu/actions/sonar@master"
  args = "-Dsonar.projectBaseDir=./src"
}
```
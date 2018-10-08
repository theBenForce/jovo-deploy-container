# AWS Docker Container

A docker image based on `node:alpine` for use in CI/CD pipelines targeting AWS. Includes the AWS cli, node, python, git, [labbadge](https://www.npmjs.com/package/labbadge), and a custom script.

## Script

| command                                     | description                                      |
| ------------------------------------------- | ------------------------------------------------ |
| `add-ssh <id_rsa contents>`                 | Set the contents of `~/.ssh/id_rsa`.             |
| `get-json-value <filename> <property path>` | Get the value of the property at the given path. |

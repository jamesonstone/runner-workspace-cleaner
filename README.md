# runner-workspace-cleaner

A Github Action to Clean a Runner's Workspace

## When should I use this Action

If you're seeing this error from [action/checkout](https://github.com/actions/checkout)

```bash
Error: fatal: cannot update the ref 'refs/heads/master': unable to append '.git/logs/refs/heads/master': Permission denied
Error: The process '/usr/bin/git' failed with exit code 128
```

## Why

Manipulating files within a Github Action Workflow with several different Github Actions results in files with different owners. This will, eventually, cause self-hosted runners to fail to checkout/load because of preexisting files that cannot be deleted due to permissions. This Action is meant to be run at the beginning of a Github Actions Workflow to clear out prior run results (if they exist)

## How to Use

```yaml
    name: "New Github Action Workflow"
    runs-on: [self-hosted]
    steps:
    - uses: jstone28/runner-workspace-cleaner@v1.0.0 # runner-workspace-cleaner added at the started of the job
    - name: Use action/checkout to checkout a new project
      uses: actions/checkout@v2
```

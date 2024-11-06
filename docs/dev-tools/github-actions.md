# GitHub Actions

Information on building and running GitHub Actions.

## Resources
- [GitHub Actions documentation](https://docs.github.com/en/actions)
- [Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions)
- [Skipping workflow runs with commit messages](https://docs.github.com/en/actions/managing-workflow-runs-and-deployments/managing-workflow-runs/skipping-workflow-runs)

## Suggested Security Practices
See [Security hardening for GitHub Actions](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions) for good security practices when using GitHub Actions.
Below we highlight specific practices that can be easily overlooked.

### Using full length commit SHA
When using a third-party GitHub Action (such as any of those described in [Supporting Actions](#supporting-actions) below), pin the action to a full length commit SHA.

GitHub Docs explain the reason as follows:
> Pinning an action to a full length commit SHA is currently the only way to use an action as an immutable release.
> Pinning to a particular SHA helps mitigate the risk of a bad actor adding a backdoor to the action's repository, as they would need to generate a SHA-1 collision for a valid Git object payload. 
> When selecting a SHA, you should verify it is from the action's repository and not a repository fork.

For example, use
```
steps:
    - name: Log in to the Container registry
      uses: docker/login-action@65b78e6e13532edd9afa3aa52ac7964289d1a9c1
```
instead of
```
steps:
    - name: Log in to the Container registry
      uses: docker/login-action
```
For more information see [Using third-party actions](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions#using-third-party-actions).

### Artifact attestation
GitHub Docs describe [artifact attestation](https://docs.github.com/en/actions/security-for-github-actions/using-artifact-attestations/using-artifact-attestations-to-establish-provenance-for-builds) as follows:

> Artifact attestations enable you to create unfalsifiable provenance and integrity guarantees for the software you build. 
> In turn, people who consume your software can verify where and how your software was built.

If your workflow generates an artifact that will only be used internally (e.g., by the workflow itself), then attestation isn't necessary. 
But if your workflow outputs will be used by others, you should include artifact attestation (e.g., with [`actions/attest-build-provenance`](https://github.com/actions/attest-build-provenance))

## Github Actions Examples

### Supporting Actions
These can be included in your workflow file to execute certain tasks, rather than building them from scratch.
Using existing actions will simplify and strengthen your workflow.

#### General Purpose
- Checkout repo: [`actions/checkout`](https://github.com/actions/checkout)
- Setup specific Python version for workflow: [`actions/setup-python`](https://github.com/actions/setup-python)
- Run pre-commit: [`pre-commit/action`](https://github.com/pre-commit/action)

#### Working with Workflow Outputs
- Generation attestation for workflow artifacts: [`actions/attest-build-provenance`](https://github.com/actions/attest-build-provenance)
- Cache dependencies and build outputs: [`actions/cache`](https://github.com/actions/cache)

#### Building Docker Images
- Login to container registry: [`docker/login-action`](https://github.com/docker/login-action)
- Extract metadata from Github for Docker: [`docker/metadata-action`](https://github.com/docker/metadata-action)
- Build and push Docker image: [`docker/build-push-action`](https://github.com/docker/build-push-action)

#### GitHub Pages
- Setup Pages: [`actions/configure-pages`](https://github.com/actions/configure-pages)
- Package and upload artifact that can be deployed to Pages: [`actions/upload-pages-artifact`](https://github.com/actions/upload-pages-artifact)
- Deploy to Pages: [`actions/deploy-pages`](https://github.com/actions/deploy-pages)

### Example Workflow Files 
The [`example-workflows/`](./example-workflows/) folder contains example workflow files for reference.
Additional examples can be found in the [`epiworld-forecasts`](https://github.com/EpiForeSITE/epiworld-forecasts/) repo.

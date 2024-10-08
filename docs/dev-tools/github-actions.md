# GitHub Actions

Information on building and running GitHub Actions (GHA).
TODO: Link General Documentation
TODO: Link Workflow Syntax (cheatsheet)

## Configuring Project's GHA Settings
TODO: What needs to be done here

## Suggestions

### Security Practices
TODO: Reasoning
TODO: Using full length commit SHA described [here](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions#using-third-party-actions)
TODO: Link to more information

### Artifact attestation
TODO: Reasoning for attestation
TODO: Example action for doing it
TODO: Link to more information: [Artifact attestation](https://docs.github.com/en/actions/security-for-github-actions/using-artifact-attestations/using-artifact-attestations-to-establish-provenance-for-builds)

## Examples

### Supporting Actions
These can be included in your workflow file to execute certain tasks, rather than building them from scratch.
Using existing actions will simplify and strengthen your workflow.

#### General Purpose
- Checkout repo: [`actions/checkout`](https://github.com/actions/checkout)
- Generation attestation for workflow artifacts: [`actions/attest-build-provenance`](https://github.com/actions/attest-build-provenance)
- Setup specific Python version for workflow: [`actions/setup-python`](https://github.com/actions/setup-python)
- Cache dependencies and build outputs: [`actions/cache`](https://github.com/actions/cache)
- Run pre-commit: [`pre-commit/action`](https://github.com/pre-commit/action)

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

Pipeline Overview
A standard CI pipeline two main stages:
1. The Pull Request pipeline 
2. The post-commit pipeline.
 The PR pipeline validates code before merge, while the post-commit pipeline confirms that merged code is build-ready, secure, and deployable.

Common GitHub Actions used 

•	actions/checkout – Checks out repository code.
•	actions/setup-node, actions/setup-python, actions/setup-java – Sets up language runtimes.
•	wagoid/commitlint-github-action – Validates commit messages.
•	amannn/action-semantic-pull-request – Validates PR title format.
•	wearerequired/lint-action or reviewdog/action-eslint – Runs linting checks.
•	github/codeql-action – Performs CodeQL security analysis.
•	sonarsource/sonarqube-scan-action – Runs SonarQube analysis.
•	gitleaks/gitleaks-action – Performs secret scanning.
•	aquasecurity/trivy-action and snyk/actions – Scan dependencies and container images.
•	codecov/codecov-action – Publishes code coverage reports.
•	docker/build-push-action – Builds and pushes Docker images.
•	actions/upload-artifact – Uploads generated build artifacts.


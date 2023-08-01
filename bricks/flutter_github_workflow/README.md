# flutter_github_workflow

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)][1]
[![style: very good analysis][analysis_badge]][analysis_badge_link]

A brick that creates a github workflow file using [very good workflows][2]. Supports: `flutter_package`, `dart_package`, `semantic_pull_request` and `spell_check`.

## Installation 🚀️

To install run:

```sh
mason add flutter_github_workflow
```

To install globally run:

```sh
mason add -g flutter_github_workflow
```

### How to use:

```sh
mason make flutter_github_workflow
```

### Variables 🧩️

| Variable        | Description                                   | Default        | Type                                |
| --------------- | --------------------------------------------- | -------------- | ----------------------------------- |
| `workflow_type` | Type of the package                           | `dart_package` | [`dart_package`, `flutter_package`] |
| `package_name`  | The name of the package and workflow file     | `main`         | `string`                            |
| `min_coverage`  | Minimum coverage percentage                   | `100`          | `number`                            |
| `semantic_pr`   | Whether to add semantic pull request workflow | `true`         | `boolean`                           |
| `spell_check`   | Whether to add spell check workflow           | `false`        | `boolean`                           |

### Outputs 📦️

Command:

```
mason make flutter_github_workflow --workflow_type dart_package --package_name auth_repository --min_coverage 100 --semantic_pr true --spell_check true
```

Output:

```yaml
# auth_repository.yaml
name: auth_repository

concurrency:
  group: ${{ github.workflow }}-${{ github.ref }}
  cancel-in-progress: true

on:
  pull_request:
    # To run this workflow only when certain files have changed, uncomment the
    # `paths` key below and replace the list of paths
    # paths:
    #   - "packages/auth_repository/**"
    #   - ".github/workflows/auth_repository.yaml"
    branches:
      - main

  push:
    # To run this workflow only when certain files have changed, uncomment the
    # `paths` key below and replace the list of paths
    # paths:
    #   - "packages/auth_repository/**"
    #   - ".github/workflows/auth_repository.yaml"
    branches:
      - main
jobs:
  # For further customization of this workflow, see: https://workflows.vgv.dev/docs/workflows/semantic_pull_request
  semantic-pull-request:
    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/semantic_pull_request.yml@v1
  # For further customization of this workflow, see: https://workflows.vgv.dev/docs/workflows/dart_package
  build:
    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/dart_package.yml@v1
    with:
      working_directory: packages/auth_repository
      dart_sdk: stable
      min_coverage: 100
  # For further customization of this workflow, see: https://workflows.vgv.dev/docs/workflows/spell_check
  spell-check:
    uses: VeryGoodOpenSource/very_good_workflows/.github/workflows/spell_check.yml@v1
    with:
      includes: |
        **/*.md
      modified_files_only: false
```

[1]: https://github.com/felangel/mason
[2]: https://workflows.vgv.dev/
[analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[analysis_badge_link]: https://pub.dev/packages/very_good_analysis

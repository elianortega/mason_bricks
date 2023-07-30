<p align="center">
<img src="https://raw.githubusercontent.com/felangel/mason/master/assets/mason_full.png" height="125" alt="mason logo" />
</p>

<p  align="center">
<a href="https://pub.dev/packages/very_good_analysis"><img src="https://img.shields.io/badge/style-very_good_analysis-B22C89.svg" alt="style: very good analysis"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
<a href="https://github.com/felangel/mason"><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge" alt="Powered by Mason"></a>
</p>

<p align="center">
A collection of <a href="https://github.com/felangel/mason">mason</a> bricks to simplify you development experience.
</p>

---

## Bricks 🧱

| Brick                                                                                               | Description                                                                                | Version |
| --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | ------- |
| [bricks_repository](https://github.com/elianortega/mason_bricks/tree/main/bricks/bricks_repository) | A brick that creates the basic repository structure to host many of you own custom bricks. | 0.1.0   |

## Getting started 🚀

### Adding a brick 🏗️️

To add a brick that has not been published to brickhub.dev use one of the following commands:

```sh
# add from git url
mason add <BRICK_NAME> --git-url https://github.com/elianortega/mason_bricks --git-path path/to/<BRICK_NAME>

# add from git url (global)
mason add -g <BRICK_NAME> --git-url https://github.com/elianortega/mason_bricks --git-path path/to/<BRICK_NAME>

# example to add bricks_repository brick
mason add -g bricks_repository --git-url https://github.com/elianortega/mason_bricks --git-path bricks/bricks_repository/
```

[1]: https://github.com/felangel/mason

# Scaffold C

This script creates a C project directory with the specified name.

## Usage

```bash
scaffold-c CMD PATH [...OPTIONS]
```

## Arguments

* `CMD`: Command to execute in the project directory.

* `PATH`: Path to the project directory to create.

## Commands

* `create`: Create the project directory.

  * `-f | --force`: Force creation of the project directory, even if it already exists.

  * `--no-git`: Does not initialize the project directory as a Git repository.

  * `--project-name`: Name of the project. Defaults to the name of the project directory.

  * `--dry-run`: Do not execute any command. ***[Not implemented yet]***

* `add <name>`: Add a file to the project directory.

## Global Options

* `-h | --help`: Display this help message and exit.

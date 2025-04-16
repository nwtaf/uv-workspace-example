## Basic `uv` operations

### Creating virtual environment
This creates a virtual environment in the `.venv` directory, so you can point your IDE to it.
```shell
uv venv
```

### Installing dependencies

```shell
uv sync                  # this will only install dependencies found in the current directory's pyproject.toml
uv sync --package my-lib # this will only install dependencies of my-lib
uv sync --all-packages   # this will install dependencies of all workspace members
```

### Running

```shell
uv run run.py
```

### Running tests

Note: `pytest` must be listed among the dependencies or the following command will not work.

```shell
uv run pytest tests
```

### Building package(s)

```shell
uv build                  # builds current project
uv build --package my-lib # builds a specific package
```

Build files are stored in the `dist/` directory.

### Publishing package(s)

```shell
uv publish # will publish all packages found in dist/
```

### Working with the lockfile

```shell
uv lock          # update lockfile (e.g. after manually changing pyproject.toml)
uv lock --locked # check if it's still consistent with pyproject.toml
```
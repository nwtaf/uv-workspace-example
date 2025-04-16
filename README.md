# UV Workspace Example

This repository is a minimal working example of a [uv workspace](https://docs.astral.sh/uv/concepts/projects/workspaces/), demonstrating how to structure a Python monorepo using [uv](https://github.com/astral-sh/uv). It includes:
- A reusable library (`packages/my_lib`)
- An application (`scr/my_app`)
- A CLI tool (`src/my_cli`)
- Tests for the CLI
- Docker support for building and running the app

Each __workspace member__ has its own `pyproject.toml`, and the project is managed by a single global `uv.lock` in the root.

---

## 🚀 Features

- ✨ Modern Python packaging with `pyproject.toml`
- 🧪 Integrated testing using `pytest`
- 🐳 Dockerfile for containerized builds
- 🧱 Example of `uv` workspace dependency linking

---

## 🗂 Project Structure

```
uv-workspace-example/
├── .dockerignore
├── .gitignore
├── Dockerfile
├── pyproject.toml
├── README.md
├── uv.lock
├── notes/
│   ├── basic_uv_operations.md
│   └── build_notes.md
├── packages/
│   └── my_lib/
│       ├── pyproject.toml
│       ├── README.md
│       ├── src/my_lib/
│       │   ├── lib.py
│       │   └── __init__.py
│       └── tests/
│           └── __init__.py
├── src/
│   ├── my_app/
│   │   ├── main.py
│   │   └── __init__.py
│   └── my_cli/
│       ├── main.py
│       └── __init__.py
└── tests/
    ├── test_cli.py
    └── __init__.py
```

---

## ⚙️ Installation

### 1. Clone the repository
```bash
git clone https://github.com/nwtaf/uv-workspace-example.git
```

### 2. Run the app using `uv`
```bash
uv run src/my_app/main.py
```

This will print "Hello World!".

---

## 🛠 Editable Install (for Developers)

### 1. Create a virtual environment
```bash
uv venv
```

### 2. Install dependencies
```bash
uv sync
```

### 3. Install the main project in editable mode
```bash
uv pip install -e .
```

### 4. Run tests
```bash
pytest tests/
```

---

## 🐳 Docker

### Build the Docker image
```bash
docker build -t uv-workspace-example .
```

### Run the container
```bash
docker run -it uv-workspace-example
```

This will launch the CLI tool via the container’s entrypoint.

---

## 📄 Notes

- [Build Notes](notes/build_notes.md)
- [Basic uv Operations](notes/basic_uv_operations.md)

---

## 📜 License

> _This project does not currently include a license._  
> You can choose a license at [choosealicense.com](https://choosealicense.com/).

---

## 🙌 Acknowledgments
- [fedragon](https://github.com/fedragon/uv-workspace-example.git) for the original repository
- [uv](https://github.com/astral-sh/uv) by Astral
- [click](https://click.palletsprojects.com/) for the CLI interface

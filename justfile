@_default:
    just --list

# Set development environment up
@bootstrap:
    uv tool run --with pre-commit-uv pre-commit install

# Run pre-commit rules on all files
@lint *ARGS:
    uv tool run --with pre-commit-uv pre-commit run --all-files {{ ARGS }}

# Upgrade pre-commit hooks
@upgrade-pre-commit:
    uv tool run --with pre-commit-uv pre-commit autoupdate

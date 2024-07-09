.PHONY: all env build install uninstall test open format release

all: env uninstall build install test open

env:
	pipx install pre-commit || true
	pipx install build || true
	pipx install twine || true

build:
	pyproject-build

install:
	pipx install . --include-deps

uninstall:
	pipx uninstall jugmt || true

test:
	pytest

open:
	firefox /tmp/pytest-of-${USER}/pytest-current/test_cli_tool0/*.{html,json} || true

format:
	pre-commit run --all-files

release:
	twine upload dist/*
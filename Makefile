.PHONY: all env build install uninstall test open format release

all: env uninstall build install test open

env:
	pipx install coveralls || true
	pipx install pygount || true
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
	pytest --cov=jugmt --cov-report=term-missing --cov-report=html

open:
	firefox /tmp/pytest-of-${USER}/pytest-current/test_cli_tool0/*.{html,json} || true

format:
	pre-commit run --all-files

release:
	twine upload dist/*
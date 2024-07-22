PROJECT_NAME=jugmt

.PHONY: all clean env build install uninstall test open format release

all: env uninstall build install test open

env:
	pipx install build || true
	pipx install coveralls || true
	pipx install pygount || true
	pipx install pre-commit || true
	pipx install twine || true

clean:
	@rm coverage.lcov || true
	@rm -r build || true
	@rm -r .coverage || true
	@rm -r dist|| true
	@rm -r htmlcov || true
	@rm -r .mypy_cache || true
	@rm -r .pytest_cache || true

build:
	pyproject-build

install:
	pipx install . --include-deps --force

uninstall:
	pipx uninstall $(PROJECT_NAME) || true

test:
	pytest --cov=$(PROJECT_NAME) --cov-report=lcov --cov-report=term-missing --cov-report=html -vvs tests

open:
	firefox /tmp/pytest-of-${USER}/pytest-current/test_cli_tool0/*.{html,json} || true

format:
	pre-commit run --all-files

release:
	twine upload dist/*

bump:
	./toolbox/project_version_update.py
	make env uninstall build install
	jugmt --dump-schema --output /tmp/
	cp /tmp/figures.schema.json src/jugmt/schema/figures.schema.json
	make
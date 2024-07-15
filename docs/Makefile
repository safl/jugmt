# The builddir path is hardcoded in the config/doxy.conf and config/conf.py
BUILD_DIR?=_build
CONFIG_DIR?=./
DOCS_DIR?=src

VENV_NAME = .venv
VENV = . ${VENV_NAME}/bin/activate && 
PYTHON = ${VENV} python3

default: clean deps apidoc html serve

.PHONY: clean deps apidoc html linkcheck serve

clean:
	rm -fr $(BUILD_DIR) || true	

deps:
	pipx install poetry
	poetry config keyring.enabled false
	poetry install --no-root

apidoc:
	rm -r src/api || true
	poetry run sphinx-apidoc ../src/jugmt -o src/api --separate --module-first --no-toc -H api

html:
	mkdir -p $(BUILD_DIR)/html
	PATH="$(PATH):../src" ${PYTHON} -m sphinx -E -b html -c $(CONFIG_DIR) $(DOCS_DIR) $(BUILD_DIR)
	touch $(BUILD_DIR)/html/.nojekyll

linkcheck:
	PATH="$(PATH):../src" ${PYTHON} -m sphinx -b linkcheck -c $(CONFIG_DIR) $(DOCS_DIR) $(BUILD_DIR)

serve:
	@screen -S jugmtdocs -X kill || echo "Could not kill server, probably not running"
	@cd $(BUILD_DIR) && screen -S jugmtdocs -d -m python3 -m http.server 8888
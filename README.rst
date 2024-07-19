jugmt: JUst Give Me Tables
==========================

.. image:: https://img.shields.io/badge/docs-GitHub%20Pages-blue
    :target: https://safl.github.io/jugmt/
    :alt: Documentation

.. image:: https://github.com/safl/jugmt/actions/workflows/bd.yaml/badge.svg
    :target: https://github.com/safl/jugmt/actions/workflows/bd.yaml
    :alt: Build Status

.. image:: https://coveralls.io/repos/github/safl/jugmt/badge.svg?branch=main
   :target: https://coveralls.io/github/safl/jugmt?branch=main

.. image:: https://img.shields.io/pypi/v/jugmt
    :target: https://pypi.org/project/jugmt/
    :alt: PyPI

.. image:: https://img.shields.io/github/license/safl/jugmt
    :target: https://opensource.org/licenses/LGPL-2.1
    :alt: License

**jugmt** is a minimalistic **spex** (SPecification EXtractor)
**implementation** with a codebase less than **300** lines of Python::

  ┏━━━━━━━━━━━━━━━━━━━┳━━━━━━━┳━━━━━━━┳━━━━━━┳━━━━━━┳━━━━━━━━━┳━━━━━━┓
  ┃ Language          ┃ Files ┃     % ┃ Code ┃    % ┃ Comment ┃    % ┃
  ┡━━━━━━━━━━━━━━━━━━━╇━━━━━━━╇━━━━━━━╇━━━━━━╇━━━━━━╇━━━━━━━━━╇━━━━━━┩
  │ Python            │     8 │  66.7 │  234 │ 54.2 │      68 │ 15.7 │
  │ JSON              │     1 │   8.3 │   85 │ 66.9 │       0 │  0.0 │
  │ HTML+Django/Jinja │     1 │   8.3 │   46 │ 86.8 │       0 │  0.0 │
  │ __empty__         │     1 │   8.3 │    0 │  0.0 │       0 │  0.0 │
  │ __duplicate__     │     1 │   8.3 │    0 │  0.0 │       0 │  0.0 │
  ├───────────────────┼───────┼───────┼──────┼──────┼─────────┼──────┤
  │ Sum               │    12 │ 100.0 │  365 │ 59.6 │      68 │ 11.1 │
  └───────────────────┴───────┴───────┴──────┴──────┴─────────┴──────┘

The tool extracts figure information and tables from ``.docx`` files, generates
**HTML** and **JSON**, and validates the **JSON** using a **JSON** schema.

When running the tool on a collection of NVMe specification documents, including
Base, Boot, MI, NVM, ZNS, KV, PCI, RDMA, and TCP, it consumes a total of **5
seconds**  of wall-clock time and about **500MB** of memory on an i7-1360P using
a single thread for all documents combined.

For more information on the source code, extracted table formats, and
validation, please refer to the `online documentation <https://safl.dk/jugmt>`_

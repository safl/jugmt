jugmt: JUst Give Me Tables
==========================

**jugmt** is a minimalistic **spex** (SPecification EXtractor)
**implementation** with a codebase less than **200** lines of Python::

  ┏━━━━━━━━━━━━━━━━━━━┳━━━━━━━┳━━━━━━━┳━━━━━━┳━━━━━━┳━━━━━━━━━┳━━━━━━┓
  ┃ Language          ┃ Files ┃     % ┃ Code ┃    % ┃ Comment ┃    % ┃
  ┡━━━━━━━━━━━━━━━━━━━╇━━━━━━━╇━━━━━━━╇━━━━━━╇━━━━━━╇━━━━━━━━━╇━━━━━━┩
  │ Python            │     7 │  63.6 │  160 │ 49.8 │      61 │ 19.0 │
  │ JSON              │     1 │   9.1 │   58 │ 52.7 │       0 │  0.0 │
  │ HTML+Django/Jinja │     1 │   9.1 │   46 │ 86.8 │       0 │  0.0 │
  │ __empty__         │     1 │   9.1 │    0 │  0.0 │       0 │  0.0 │
  │ __duplicate__     │     1 │   9.1 │    0 │  0.0 │       0 │  0.0 │
  ├───────────────────┼───────┼───────┼──────┼──────┼─────────┼──────┤
  │ Sum               │    11 │ 100.0 │  264 │ 54.5 │      61 │ 12.6 │
  └───────────────────┴───────┴───────┴──────┴──────┴─────────┴──────┘

The tool extracts figure information and tables from ``.docx`` files, generates
**HTML** and **JSON**, and validates the **JSON** using a **JSON** schema.

It does so for various NVMe specification documents, including Base, Boot, MI,
NVM, ZNS, KV, PCI, RDMA, and TCP. It performs these tasks in about **5 seconds**
on an i7-1360P using a single thread and uses approximately **500MB** of memory.

.. toctree::
   :maxdepth: 2
   :caption: Contents:
   :hidden:

   install/index.rst
   usage/index.rst
   schema/index.rst
   api/jugmt.rst

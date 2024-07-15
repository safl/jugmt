jugmt: JUst Give Me Tables
==========================

**jugmt** is a minimalistic **spex** (SPecification EXtractor)
**implementation** with a codebase less than **200** lines of Python::

  Totals grouped by language (dominant language first):
  python:         196 (100.00%)

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

.. _sec-schema:

Schema
======

The generated **JSON** document is validated against a **JSON** schema. You can
use the path:

* https://raw.githubusercontent.com/safl/jugmt/main/src/jugmt/schema/document.figures.schema.json

The schema is provided verbatim in the :ref:`sec-schema-content` section. A
loose description of the document structure is provided below to convey a brief
mental picture of the structure.

**document**
  An encapsulation of the source ``.docx`` and the extracted figures/tables.

  ``path``
    Path to the .docx document from which figures/tables were extracted.

  ``figures``
    An array of figures.

**figure**
  An object wrapping the table data, when there is any, providing additional
  data such as the figure number and the page of the document that the figure
  occurs on.

  ``figure_nr``
    An integer representing the number of the figure.
  ``page_nr``
    An integer representing the page number where the figure is located.
  ``caption``
    A string providing the **caption** of the figure.
  ``description``
    A string providing the **description** part of **figure.caption**.
  ``table``
    Either ``null`` or a table.

**table**
  The table data is represented as an **array of arrays**, where each cell has
  specific attributes. Note that the array of arrays may be irregular, e.g. it
  is not a **2D NxM Matrix**, reflecting the structure of the source tables,
  which can also be irregular. This irregularity is intentional and should
  be detected by a linting tool. Therefore, the data is intentionally not
  normalized. Cell attributes are provided below.

  ``text``
    A string containing some text.
  ``tables``
    A possibly empty array of tables. This nesting can occur multiple times, at
    most two nested/embedded tables. This limited recursion is caught by the
    **JSON** schema.

.. _sec-schema-content:

Content
-------

.. literalinclude:: ../../../src/jugmt/schema/document.figures.schema.json
   :language: json

.. _sec-usage:

Usage
-----


.. literalinclude:: usage.cmd
   :language: bash


.. literalinclude:: usage.out
   :language: bash


.. _sec-usage-example:

Example
~~~~~~~

Place yourself in the root of the repository and run::

  jugmt example/*.docx --output /tmp/foo

This will extract figures from the ``.docx`` files found in the ``example``
folder and store **JSON** and **HTML** versions of the documents in the folder
named ``/tmp/foo```.

In case you do not want to run it, then you can inspect the
`JSON <https://github.com/safl/jugmt/blob/main/example/output/figure_example.json>`_
and  `HTML <https://github.com/safl/jugmt/blob/main/example/output/figure_example.html>`_ 
in the
`repository on GitHUB <https://github.com/safl/jugmt/tree/main/example/output>`_
or locally in the folder ``example/output``.

For details on the structure of the **JSON** document, then have a look at
the :ref:`schema <sec-schema>` section.
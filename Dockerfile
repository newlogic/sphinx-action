FROM sphinxdoc/sphinx-latexpdf:4.5.0

LABEL "maintainer"="Jeremi Joslin <jeremi@newlogic.com>"

RUN pip install -U pip
RUN pip install python-dateutil
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]

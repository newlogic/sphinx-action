FROM sphinxdoc/sphinx:4.5.0

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

RUN pip install -U pip
RUN pip install python-dateutil
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]

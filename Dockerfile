FROM python:2.7
COPY hetzner.py /usr/local/sbin/
RUN pip install --no-cache-dir grequests

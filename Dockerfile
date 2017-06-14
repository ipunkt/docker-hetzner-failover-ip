FROM python:2.7
COPY hetzner.py /usr/local/sbin/
RUN chmod +x /usr/local/sbin/hetzner.py \
	&& pip install --no-cache-dir grequests
CMD /usr/local/sbin/hetzner.py

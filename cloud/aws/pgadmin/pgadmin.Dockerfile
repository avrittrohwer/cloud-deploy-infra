FROM dpage/pgadmin4:6.18

USER root

COPY init.py /init.py

RUN touch /pgadmin4/servers.json && chown pgadmin:root /pgadmin4/servers.json

USER pgadmin

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["python3 /init.py; /entrypoint.sh"]

FROM python:2


RUN mkdir /tailon 
COPY run.sh /tailon/run.sh
RUN chmod +x /tailon/run.sh
COPY tailon-0.6.0 /tailon/tailon-0.6.0
RUN pip install /tailon/tailon-0.6.0

VOLUME ["/data"]

EXPOSE 8080

WORKDIR "/tailon"

CMD ["/tailon/run.sh"]

USER nobody

# docker run -it -v /var/log:/data --user=1000 -p 8084:8080 sago007/docker_tailon

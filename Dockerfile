FROM python:2


RUN mkdir /tailon 
COPY run.sh /tailon/run.sh
RUN chmod +x /tailon/run.sh
COPY tailon-0.5.1 /tailon/tailon-0.5.1
RUN pip install /tailon/tailon-0.5.1

VOLUME ["/data"]

EXPOSE 8080

WORKDIR "/tailon"

CMD ["/tailon/run.sh"]

USER nobody

# docker run -it --rm -p 8080:8084 --volumes-from CONTAINER_NAME sago007/tailon 

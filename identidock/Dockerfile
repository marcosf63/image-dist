FROM python

RUN groupadd -r wsgi && useradd -r -g wsgi wsgi
RUN pip install Flask uWSGI 
RUN pip install requests
RUN pip install redis

WORKDIR /app

COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191

USER wsgi

#CMD ["python", "identidock.py"]
CMD ["/cmd.sh"]

FROM cloudron/base:3.2.0@sha256:ba1d566164a67c266782545ea9809dc611c4152e27686fd14060332dd88263ea

RUN mkdir -p /app/code /app/data /app/data/data
WORKDIR /app/code

RUN curl -s https://owncast.online/install.sh | bash

# add code
COPY start.sh /app/code/
RUN rm -rf /app/code/owncast/data
RUN ln -s /app/data/data /app/code/owncast/data
RUN chmod +x /app/code/start.sh
RUN chmod +x /app/code/owncast/owncast

CMD [ "/app/code/start.sh" ]

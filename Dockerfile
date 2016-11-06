FROM sfresnel/docker-nodejs:1.0

RUN git clone git@github.com:prose/gatekeeper.git && \
	cd gatekeeper && \
	npm install


WORKDIR /gatekeeper
ENTRYPOINT ["nodejs", "server.js"]
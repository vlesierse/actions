FROM node:10-slim

LABEL name="vamp"
LABEL version="1.0.0"
LABEL repository="http://github.com/vlesierse/actions/vamp"
LABEL homepage="http://github.com/vlesierse/actions/vamp"

LABEL maintainer="Vincent Lesierse <vincent@lesierse.com>"
LABEL com.github.actions.name="GitHub Action for Vamp"
LABEL com.github.actions.description="Wraps the Vamp cli to enable vamp commands."
LABEL com.github.actions.icon="box"
LABEL com.github.actions.color="pink"
COPY LICENSE README.md /

RUN npm install -g vamp-cli-ee

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

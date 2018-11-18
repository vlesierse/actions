FROM hasicorp/terraform

LABEL name="terraform"
LABEL version="0.11.10"
LABEL repository="http://github.com/vlesierse/actions/terraform"
LABEL homepage="http://github.com/vlesierse/actions/terraform"

LABEL maintainer="Vincent Lesierse <vincent@lesierse.com>"
LABEL com.github.actions.name="GitHub Action for Terraform"
LABEL com.github.actions.description="Wraps terraform to enable terraform commands."
LABEL com.github.actions.icon="box"
LABEL com.github.actions.color="purple"

COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

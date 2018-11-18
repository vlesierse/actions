FROM microsoft/dotnet:2.1-sdk-alpine

LABEL name="dotnet"
LABEL version="1.0.0"
LABEL repository="http://github.com/vlesierse/actions/dotnet"
LABEL homepage="http://github.com/vlesierse/actions/dotnet"

LABEL maintainer="Vincent Lesierse <vincent@lesierse.com>"
LABEL com.github.actions.name="GitHub Action for .NET Core"
LABEL com.github.actions.description="Wraps the dotnet CLI to enable common dotnet commands."
LABEL com.github.actions.icon="box"
LABEL com.github.actions.color="yellow"

COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

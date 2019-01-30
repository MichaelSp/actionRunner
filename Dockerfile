FROM ruby

LABEL version="2.0.0"
LABEL repository="http://github.com/MichaelSp/actionRunner"
LABEL homepage="http://github.com/MichaelSp/actionRunner"
LABEL maintainer="Michael Sprauer <Michael@Sprauer.net>"

LABEL com.github.actions.name="GitHub Action for ruby"
LABEL com.github.actions.description="Wraps the Ruby CLI to enable common ruby commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"
#COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

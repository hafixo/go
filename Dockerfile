FROM golang:1.11

LABEL repository="https://github.com/actions-contrib/go"
LABEL homepage="https://github.com/actions-contrib/go"
LABEL maintainer="Chase Hutchins <syntaqx@gmail.com>"

LABEL "com.github.actions.name"="go"
LABEL "com.github.actions.description"="Wraps the golang CLI enabling go commands."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

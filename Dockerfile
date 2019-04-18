FROM golang:1.12

LABEL repository="https://github.com/actions-contrib/go"
LABEL homepage="https://github.com/actions-contrib/go"
LABEL maintainer="Chase Pierce <syntaqx@gmail.com>"

LABEL "com.github.actions.name"="Go"
LABEL "com.github.actions.description"="Wraps the golang CLI enabling go commands."
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="blue"

ENV GO111MODULE on

ENTRYPOINT [ "go" ]

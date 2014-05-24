FROM crosbymichael/golang

# go get to download all the deps

ADD . /go/src/skydock
ADD plugins/ /plugins

RUN go get -u skydock
RUN cd /go/src/skydock && go install . ./...

ENTRYPOINT ["/go/bin/skydock"]

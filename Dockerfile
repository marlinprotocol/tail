FROM golang

RUN mkdir -p $GOPATH/src/marlinstash/tail/
ADD . $GOPATH/src/marlinstash

# expecting to fetch dependencies successfully.
RUN go get -v marlinstash

# expecting to run the test successfully.
RUN go test -v marlinstash

# expecting to install successfully
RUN go install -v github.com/hpcloud/tail
RUN go install -v github.com/hpcloud/cmd/gotail

RUN $GOPATH/bin/gotail -h || true

ENV PATH $GOPATH/bin:$PATH
CMD ["gotail"]

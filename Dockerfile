FROM pandoc/latex:3@sha256:850bfc3bfc7c46b57e0ba7f9c52f56d2cce5fa4454e04bfa07cd7ee769795130

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

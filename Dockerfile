FROM pandoc/latex:3@sha256:8ebc42163df4eef38ee9b2adf1b04f89018a26b1f9acec3cf7041d3cb37e36e2

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

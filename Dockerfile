FROM pandoc/latex:2@sha256:0000000000000000000000000000000000000000000000000000000000000000

RUN apk --update --no-cache add make perl fontconfig \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

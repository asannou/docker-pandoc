FROM pandoc/latex:3@sha256:cdbf139f607237498b412b3aa051008311d69b88006ab47550efba357af3b277

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

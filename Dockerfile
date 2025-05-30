FROM pandoc/latex:3@sha256:3eb1974ba89ea881daedd8c308b3eb47405dd19a1a25af0b7fd97ed632fc1d8d

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

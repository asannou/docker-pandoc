FROM pandoc/latex:3@sha256:24d80543059f75295331aa6bc77feef97d960dcdd50e5800736daab6677ffeed

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

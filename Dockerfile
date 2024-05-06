FROM pandoc/latex:2@sha256:7852117f34af3159720ba17064e3157aa9896e03058b3346cd4b6004010d0881

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

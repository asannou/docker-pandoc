FROM pandoc/latex:3@sha256:f99dd53faf558d18ed707291c88502c0378c09a12df93727a1a53cb50d851102

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

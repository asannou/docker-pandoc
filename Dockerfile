FROM pandoc/latex:3@sha256:d63ee681927ed692e03f07822848b7e5741de4467c1e7411f08ba352a07f394f

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

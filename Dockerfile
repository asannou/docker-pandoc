FROM pandoc/latex:3@sha256:167fbb32d1624e50b0dd7377153a427cab3bb86231054531f3713e666342cac4

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

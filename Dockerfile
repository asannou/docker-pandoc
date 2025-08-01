FROM pandoc/latex:3@sha256:0960c2a6691d9fb95105baa8eebc5bf352489f336ec171fd317fac281eb1804f

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

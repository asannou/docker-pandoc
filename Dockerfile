FROM pandoc/latex:3@sha256:46bf1d73e24d9e2ca3617efa1722315e62389a864888df789ee02c40a21d7a09

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

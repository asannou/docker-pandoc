FROM pandoc/latex:3@sha256:6ec706b31915346f3b323cc14dd5f0d911f84cba1b42a89d15e8a07543c5d644

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

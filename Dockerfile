FROM pandoc/latex:3@sha256:467bb9a70723627a34eb7003e46a1bb7c9344ea4580a46c4c978860784a6a754

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

FROM pandoc/latex:3@sha256:10013c523aa1500765c07c48f65d4ec4bf714d8cde716484da7a5ad1900168a6

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

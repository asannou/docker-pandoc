FROM pandoc/latex:3@sha256:7fb9bcdd630ca4976ef3a1bfeda3458e51ac3959f28e948467e18a04ffdfc965

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

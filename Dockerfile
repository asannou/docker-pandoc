FROM pandoc/latex:3@sha256:f5e8002f6cdec21dcd000b23817fd385d4db8234fbbbb54c43c2c173d9fa2d71

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

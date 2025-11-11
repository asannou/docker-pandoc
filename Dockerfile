FROM pandoc/latex:3@sha256:7c9e67490e979de8d593f0088bda5a21ed97cdcd067aaec3beea6c06d5e26e2e

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

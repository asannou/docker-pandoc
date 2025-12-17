FROM pandoc/latex:3@sha256:45e505f7ad7b858a400ddccd600272330b75d3c888ed060de33400deaff94cdc

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

FROM pandoc/latex:3@sha256:953530c4ad1e212f47cc31ea03b830d21adf71e97a5e6266cc01d77cf58b6b52

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

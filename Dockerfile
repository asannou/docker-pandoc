FROM pandoc/latex:3@sha256:1e121c5b74e05927b89274fc17a0fb0859916fd5e28ba86085385bdceef2cd0a

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

FROM pandoc/latex:3@sha256:e4dc6e1211f76286926a26b0542f6921cf2fc65fc880d253578678f9ba02d989

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

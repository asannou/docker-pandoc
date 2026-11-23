FROM pandoc/latex:3@sha256:8077a199a829a05e19b61a0de7e447eb797e2edbec925412dfc9694d1aaeb4dd

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

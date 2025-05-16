FROM pandoc/latex:3@sha256:e1fcbdb35f1e3f5ab63a37ec3ededc66bbdce252f6c258b6fa0f33301880371f

RUN apk --update --no-cache add make perl fontconfig jq nodejs \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

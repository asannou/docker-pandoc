FROM pandoc/latex:2@sha256:cc0228f2e6552683502692281bc2c0624ef3be175886ddd0279c2b9bfeb8c95a

RUN apk --update --no-cache add make perl fontconfig \
  && tlmgr update --self --all \
  && tlmgr install collection-langjapanese

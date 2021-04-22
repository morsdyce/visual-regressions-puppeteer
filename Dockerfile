FROM buildkite/puppeteer:v1.15.0

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    fonts-roboto \
    fonts-noto-cjk \
    fonts-ipafont-gothic \
    fonts-wqy-zenhei \
    fonts-kacst \
    fonts-freefont-ttf \
    fonts-thai-tlwg \
    fonts-indic && \
    apt-get -qyy clean

RUN mkdir -p /opt/integration

RUN npm i -g storycap http-server

ENTRYPOINT [ "storycap", "--serverCmd", "http-server /opt/integration/storybook-build -p 9001", "--outDir", "/opt/integration/__screenshots__", "http://localhost:9001"]

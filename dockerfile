FROM cypress/browsers:node14.16.0-chrome90-ff88

RUN mkdir /opt/prj/
WORKDIR /opt/prj/
COPY package.json package-lock.json *node_modules /opt/prj/

RUN npm install
# RUN $(npm bin)/cypress verify

COPY . /opt/prj/
ENTRYPOINT [ "node", "./cypress-test.js" ]

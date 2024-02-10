FROM node:latest

ARG SERVICE_NAME=default

RUN mkdir /${SERVICE_NAME}

COPY ${SERVICE_NAME}/. ${SERVICE_NAME}

WORKDIR ${SERVICE_NAME}

RUN npm install

CMD ["npm, start"]
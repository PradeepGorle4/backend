# FROM node:20
FROM node:20-alpine3.21 AS builder
WORKDIR /opt/backend
COPY package.json .
COPY *.js ./
RUN npm install

# The below is the cmd for creating user and group in alpine
FROM node:20-alpine3.21
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/backend && \
    chown -R expense:expense /opt/backend
ENV DB_HOST="mysql"
WORKDIR /opt/backend
# ENV DB_HOST="localhost" 
#  localhost since we are using host network for docker containers, not the bridge n/w
USER expense
COPY --from=builder /opt/backend /opt/backend
CMD ["node", "index.js"]

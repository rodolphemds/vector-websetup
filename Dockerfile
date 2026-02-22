FROM node:22-slim
WORKDIR /app
RUN npm install vector-web-setup
RUN /app/node_modules/.bin/vector-web-setup configure
ENV PORT=7000
EXPOSE ${PORT}
CMD ["sh", "-c", "/app/node_modules/.bin/vector-web-setup serve -p ${PORT} "]
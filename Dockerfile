FROM node:22-alpine
WORKDIR /test-CICD
COPY . .
RUN npm ci  && npm run build
CMD ["npm", "run", "preview"]
EXPOSE 3000

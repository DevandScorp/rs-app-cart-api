FROM node:12-alpine AS base

WORKDIR /app

# Dependencies
COPY package*.json ./
RUN npm install

#Build
WORKDIR /app
COPY . .
RUN npm run build

# Application
FROM node:12-alpine AS application

COPY --from=base /app/package*.json ./
RUN npm install --only=production
COPY --from=base /app/dist ./dist

USER node
ENV PORT=8080
EXPOSE 8080

CMD ["node", "dist/main.js"]
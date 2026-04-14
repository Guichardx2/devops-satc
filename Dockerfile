FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci --prefer-offline --no-audit

COPY . .

RUN apk update && apk upgrade && npm run build

RUN apk add --no-cache libstdc++

CMD ["npm", "run", "preview"]


# FROM node:20-alpine

# WORKDIR /app

# COPY ..

# RUN npm install

# run npm run build

# EXPOSE 4173

# CMD ["npm", "run", "preview"]


FROM node:20-alpine AS production

WORKDIR /app

RUN npm install -g serve@latest

COPY --from=build /app/dist ./dist

RUN apk update && apk upgrade && \
    addgroup -g 1001 -S appgroup && \
    adduser -S appuser -u 1001 -G appgroup && \
    chown -R appuser:appgroup /app

USER appuser


EXPOSE 3000

CMD ["serve", "-s", "dist", "-l", "3000"]

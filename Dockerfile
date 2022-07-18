FROM node:16.15.0-alpine

RUN npm install -g pnpm

COPY . .

RUN pnpm install
RUN pnpm consumer build

CMD ["pnpm", "consumer", "serve"]

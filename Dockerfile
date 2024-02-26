FROM oven/bun:1
WORKDIR /src
COPY . .
RUN bun install

ARG PORT
EXPOSE ${PORT:-3690}

CMD ["bun", "index.ts"]
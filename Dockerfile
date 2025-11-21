# ---------- STAGE 1: BUILD ----------
FROM node:18-alpine AS builder
WORKDIR /app

# Fake build step (utile pour CI)
COPY src ./src
RUN echo "Build complete" > build-log.txt

# output = dossier build
RUN mkdir build && cp -r src/* build/


# ---------- STAGE 2: SERVE WITH NGINX ----------
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
